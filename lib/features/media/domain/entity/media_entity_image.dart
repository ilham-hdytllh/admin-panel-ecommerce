import 'dart:typed_data';

import 'package:equatable/equatable.dart';
import 'package:flutter_dropzone/flutter_dropzone.dart';

// ignore: must_be_immutable
class MediaEntityImage extends Equatable {
  int? id;
  String url;
  DropzoneFileInterface? file;
  String folder;
  String fileName;
  Uint8List? localImageToDisplay;
  MediaEntityImage({
    this.id,
    required this.url,
    this.file,
    required this.folder,
    required this.fileName,
    this.localImageToDisplay,
  });

  @override
  List<Object?> get props => [url, file, folder, fileName, localImageToDisplay];
}
