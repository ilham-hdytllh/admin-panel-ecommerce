import 'package:admin_panel_ecommerce/features/media/domain/entity/media_entity_image.dart';

class MediaRequestUploadImage {
  final String folder;
  final List<MediaEntityImage> files;

  const MediaRequestUploadImage({
    required this.folder,
    required this.files,
  });
}
