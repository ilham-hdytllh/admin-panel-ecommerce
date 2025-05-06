import 'package:admin_panel_ecommerce/core/services/services_failure.dart';
import 'package:admin_panel_ecommerce/features/media/data/model/media_request_delete_image.dart';
import 'package:admin_panel_ecommerce/features/media/data/model/media_request_fetch_image.dart';
import 'package:admin_panel_ecommerce/features/media/data/model/media_request_upload_image.dart';
import 'package:admin_panel_ecommerce/features/media/domain/entity/media_entity_image.dart';
import 'package:fpdart/fpdart.dart';

abstract class MediaRepository {
  Future<Either<ServiceFailure, String>> uploadImages(
      MediaRequestUploadImage? request);
  Future<Either<ServiceFailure, List<MediaEntityImage>>> fetchImages(
      MediaRequestFetchImage request);
  Future<Either<ServiceFailure, String>> deleteImage(
      MediaRequestDeleteImage? request);
}
