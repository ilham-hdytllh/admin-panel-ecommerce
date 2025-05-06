import 'package:admin_panel_ecommerce/core/services/services_failure.dart';
import 'package:admin_panel_ecommerce/features/media/data/model/media_request_fetch_image.dart';
import 'package:admin_panel_ecommerce/features/media/domain/entity/media_entity_image.dart';
import 'package:admin_panel_ecommerce/features/media/domain/repository/media_repository.dart';
import 'package:fpdart/fpdart.dart';

class MediaUsecaseFetchImage {
  final MediaRepository repository;

  MediaUsecaseFetchImage(this.repository);

  Future<Either<ServiceFailure, List<MediaEntityImage>>> execute(
      MediaRequestFetchImage request) {
    return repository.fetchImages(request);
  }
}
