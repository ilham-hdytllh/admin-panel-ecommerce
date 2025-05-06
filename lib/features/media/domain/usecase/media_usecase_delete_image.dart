import 'package:admin_panel_ecommerce/core/services/services_failure.dart';
import 'package:admin_panel_ecommerce/features/media/data/model/media_request_delete_image.dart';
import 'package:admin_panel_ecommerce/features/media/domain/repository/media_repository.dart';
import 'package:fpdart/fpdart.dart';

class MediaUsecaseDeleteImage {
  final MediaRepository repository;

  MediaUsecaseDeleteImage(this.repository);

  Future<Either<ServiceFailure, String>> execute(
      MediaRequestDeleteImage? request) {
    return repository.deleteImage(request);
  }
}
