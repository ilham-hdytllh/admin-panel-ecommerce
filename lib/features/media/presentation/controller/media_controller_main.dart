import 'dart:typed_data';

import 'package:admin_panel_ecommerce/common/widgets/loaders/circular_loader.dart';
import 'package:admin_panel_ecommerce/features/media/data/client/media_client_main.dart';
import 'package:admin_panel_ecommerce/features/media/data/model/media_request_delete_image.dart';
import 'package:admin_panel_ecommerce/features/media/data/model/media_request_fetch_image.dart';
import 'package:admin_panel_ecommerce/features/media/data/model/media_request_upload_image.dart';
import 'package:admin_panel_ecommerce/features/media/domain/entity/media_entity_image.dart';
import 'package:admin_panel_ecommerce/features/media/domain/usecase/media_usecase_delete_image.dart';
import 'package:admin_panel_ecommerce/features/media/domain/usecase/media_usecase_fetch_image.dart';
import 'package:admin_panel_ecommerce/features/media/domain/usecase/media_usecase_upload_image.dart';
import 'package:admin_panel_ecommerce/utils/constants/enums.dart';
import 'package:admin_panel_ecommerce/utils/constants/image_strings.dart';
import 'package:admin_panel_ecommerce/utils/constants/sizes.dart';
import 'package:admin_panel_ecommerce/utils/popups/dialogs.dart';
import 'package:admin_panel_ecommerce/utils/popups/full_screen_loader.dart';
import 'package:admin_panel_ecommerce/utils/popups/loaders.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dropzone/flutter_dropzone.dart';
import 'package:get/get.dart';

class MediaControllerMain extends GetxController {
  late BuildContext _context;
  late DropzoneViewController dropzoneViewController;
  RxBool showImageUploaderSection = false.obs;
  Rx<MediaCategory> selectedPath = MediaCategory.folders.obs;
  RxList<MediaEntityImage> selectedImagesToUpload = <MediaEntityImage>[].obs;

  RxList<MediaEntityImage> allImages = <MediaEntityImage>[].obs;

  // Upload Images Usecase
  final usecaseUploadImages = MediaUsecaseUploadImage(MediaClientMain());
  // Upload Fetch Usecase
  final usecaseFetchImages = MediaUsecaseFetchImage(MediaClientMain());
  // Upload Delete Usecase
  final usecaseDeleteImage = MediaUsecaseDeleteImage(MediaClientMain());

  Rx<bool> isLoading = Rx(false);
  int offset = 0;
  final int limit = 10;

  @override
  void onInit() {
    _context = Get.context!;
    fetchImagesByCategory(category: selectedPath.value);
    super.onInit();
  }

  void clearSelectedImages() {
    selectedImagesToUpload.clear();
  }

  Future<void> dropFile(DropzoneFileInterface file) async {
    final bytes = await dropzoneViewController.getFileData(file);

    final image = MediaEntityImage(
        url: "",
        file: file,
        folder: "",
        fileName: file.name,
        localImageToDisplay: Uint8List.fromList(bytes));

    selectedImagesToUpload.add(image);
  }

  Future<void> selectedLocalImages() async {
    final files = await dropzoneViewController
        .pickFiles(multiple: true, mime: ['image/jpeg', 'image/png']);

    if (files.isNotEmpty) {
      for (DropzoneFileInterface file in files) {
        final bytes = await dropzoneViewController.getFileData(file);

        final image = MediaEntityImage(
            url: "",
            file: file,
            folder: "",
            fileName: file.name,
            localImageToDisplay: Uint8List.fromList(bytes));

        selectedImagesToUpload.add(image);
      }
    }
  }

  void uploadImagesConfimation() {
    if (selectedPath.value == MediaCategory.folders) {
      CustomLoaders.warningSnackBar(
          title: "Select Folder",
          message: "Please select the Folder before Upload images.");
      return;
    }
    CustomDialogs.defaultDialog(
        context: _context,
        title: "Upload Images",
        confirmText: "Upload",
        onConfirm: () async => await uploadImages(),
        content:
            "Are you sure you wantto upload all Images in ${selectedPath.value.name.toUpperCase()} folder?");
  }

  Future<void> uploadImages() async {
    try {
      // Close Dialog Confirmation
      Get.back();

      // Loader
      uploadImagesLoader();

      final request = MediaRequestUploadImage(
          files: selectedImagesToUpload.toList(),
          folder: selectedPath.value.name.toLowerCase());

      // Upload and add imagesto the target list
      final result = await usecaseUploadImages.execute(request);

      result.fold((failure) {
        CustomFullScreenLoader.stopLoading();
        CustomLoaders.warningSnackBar(
            title: "Failed Upload", message: failure.message);
      }, (response) {
        offset = 0;
        fetchImagesByCategory(category: selectedPath.value);
        CustomFullScreenLoader.stopLoading();
        selectedImagesToUpload.clear();
      });
    } catch (e) {
      CustomFullScreenLoader.stopLoading();
      CustomLoaders.warningSnackBar(
          title: "Something when wrong", message: e.toString());
    }
  }

  void uploadImagesLoader() {
    showDialog(
        context: _context,
        barrierDismissible: false,
        builder: (context) => PopScope(
              canPop: false,
              child: AlertDialog(
                title: Text("Uploading Images"),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(AssetImages.uploadingImageIllustration,
                        height: 300, width: 300),
                    SizedBox(height: DimenSizes.spaceBtwItems),
                    Text("Sit Tight, Your images are uploading..."),
                  ],
                ),
              ),
            ));
  }

  void onChangeCategory(MediaCategory? category) {
    offset = 0;
    if (category != null) {
      selectedPath.value = category;
      fetchImagesByCategory(category: category);
    }
  }

  Future<void> fetchImagesByCategory({MediaCategory? category}) async {
    isLoading(true);
    final request = MediaRequestFetchImage(
      limit: limit,
      offset: offset,
      folder: category == MediaCategory.folders ? "" : category?.name ?? "",
    );

    final result = await usecaseFetchImages.execute(request);

    result.fold(
      (failure) {
        isLoading(false);
        CustomLoaders.warningSnackBar(
            title: "Failed", message: failure.message);
      },
      (response) {
        if (offset == 0) {
          // Load awal → ganti semua data
          allImages.assignAll(response);
        } else {
          // Load more → tambahkan jika ada
          if (response.isNotEmpty) {
            allImages.addAll(response);
          } else {
            CustomLoaders.warningSnackBar(
                title: "Failed", message: "All images has been loadeed.");
          }
        }

        // Tambah offset hanya kalau dapat data
        if (response.isNotEmpty) {
          offset += response.length;
        }

        allImages.refresh();
        isLoading(false);
      },
    );
  }

  void deleteImageConfirmation(MediaEntityImage image) {
    CustomDialogs.defaultDialog(
        context: _context,
        title: "Warning",
        onConfirm: () {
          Get.back();
          deleteImage(image);
        },
        content: "Are you sure you want to delete this Image?");
  }

  void deleteImage(MediaEntityImage image) async {
    Get.back();

    Get.defaultDialog(
        backgroundColor: Colors.transparent,
        barrierDismissible: false,
        content: PopScope(
          canPop: false,
          child:
              SizedBox(width: 150, height: 150, child: CustomCircularLoader()),
        ));

    final request = MediaRequestDeleteImage(
        id: image.id ?? 0,
        folder: image.folder.capitalizeFirst ?? "",
        fileName: image.fileName);
    final result = await usecaseDeleteImage.execute(request);

    result.fold((failure) {
      CustomLoaders.warningSnackBar(title: "Failed", message: failure.message);
      CustomFullScreenLoader.stopLoading();
    }, (response) {
      offset = 0;
      fetchImagesByCategory(category: selectedPath.value);
      CustomFullScreenLoader.stopLoading();
      CustomLoaders.successSnackBar(title: "Success", message: response);
    });
  }
}
