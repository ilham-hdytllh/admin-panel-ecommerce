import 'package:admin_panel_ecommerce/core/services/services_failure.dart';
import 'package:admin_panel_ecommerce/features/media/data/model/media_request_upload_image.dart';
import 'package:admin_panel_ecommerce/features/media/domain/repository/media_repository.dart';
import 'package:fpdart/fpdart.dart';

class MediaUsecaseUploadImage {
  final MediaRepository repository;

  MediaUsecaseUploadImage(this.repository);

  Future<Either<ServiceFailure, String>> execute(
      MediaRequestUploadImage? request) {
    return repository.uploadImages(request);
  }
}
