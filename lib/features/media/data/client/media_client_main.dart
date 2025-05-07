import 'package:admin_panel_ecommerce/core/services/services_failure.dart';
import 'package:admin_panel_ecommerce/features/media/data/model/media_request_delete_image.dart';
import 'package:admin_panel_ecommerce/features/media/data/model/media_request_fetch_image.dart';
import 'package:admin_panel_ecommerce/features/media/data/model/media_request_upload_image.dart';
import 'package:admin_panel_ecommerce/features/media/domain/entity/media_entity_image.dart';
import 'package:admin_panel_ecommerce/features/media/domain/repository/media_repository.dart';
import 'package:fpdart/fpdart.dart';
import 'package:get/get.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class MediaClientMain implements MediaRepository {
  final SupabaseClient supabase = Supabase.instance.client;
  final String bucketName = 'ecommerce';
  @override
  Future<Either<ServiceFailure, String>> uploadImages(
      MediaRequestUploadImage? request) async {
    try {
      if (request == null || request.files.isEmpty) {
        return Left(ServiceFailure("No files to upload"));
      }

      for (final image in request.files) {
        image.folder = request.folder;
        final bytes = image.localImageToDisplay;
        final filePath =
            'Medias/${request.folder.capitalizeFirst}/${image.fileName}';

        if (bytes != null) {
          await supabase.storage.from(bucketName).uploadBinary(filePath, bytes);

          // // Get public URL of the uploaded file
          final publicUrl =
              supabase.storage.from(bucketName).getPublicUrl(filePath);

          // Insert file metadata (file_name, public_url) into 'medias' table
          await supabase.from('medias').insert({
            'file_name': image.fileName,
            'public_url': publicUrl,
            'folder': request.folder,
          });
        }
      }

      return Right("All files uploaded successfully.");
    } on StorageException catch (e) {
      return Left(ServiceFailure(e.message));
    } catch (e) {
      return Left(ServiceFailure("Unexpected error", error: e));
    }
  }

  @override
  Future<Either<ServiceFailure, List<MediaEntityImage>>> fetchImages(
      MediaRequestFetchImage request) async {
    try {
      PostgrestList response;
      if (request.folder.isNotEmpty) {
        response = await supabase
            .from('medias')
            .select()
            .eq('folder', request.folder) // Filter folder
            .range(request.offset, request.offset + request.limit - 1)
            .order('created_at', ascending: false);
      } else {
        response = await supabase
            .from('medias')
            .select()
            .range(request.offset, request.offset + request.limit - 1)
            .order('created_at', ascending: false);
      }

      if (response.isEmpty) {
        return Right([]);
      }

      final List<MediaEntityImage> data = response
          .map((e) => MediaEntityImage(
              id: e['id'],
              folder: e['folder'],
              fileName: e['file_name'],
              url: e['public_url']))
          .toList();
      return Right(data);
    } on StorageException catch (e) {
      return Left(ServiceFailure(e.message));
    } catch (e) {
      return Left(ServiceFailure("Unexpected error", error: e));
    }
  }

  @override
  Future<Either<ServiceFailure, String>> deleteImage(
      MediaRequestDeleteImage? request) async {
    try {
      await supabase.storage
          .from(bucketName)
          .remove(["Medias/${request?.folder}/${request?.fileName}"]);

      await supabase.from("medias").delete().eq("id", request!.id);

      return Right("Success remove image");
    } on StorageException catch (e) {
      return Left(ServiceFailure(e.message));
    } catch (e) {
      return Left(ServiceFailure("Unexpected error", error: e));
    }
  }
}
