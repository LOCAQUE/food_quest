//複数の画像をストレージにアップロードし、画像のURLを取得する

import 'package:flutter/material.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:food_quest/domain/application/pick_image/notifier/pick_image_notifier.dart';
import 'package:food_quest/domain/repositories/api_repository.dart';

part 'upload_image_usecase.g.dart';

@riverpod
class UploadImageUsecase extends _$UploadImageUsecase {
  @override
  Future<List<String>> build() async {
    return Future.value([]);
  }

  Future<void> uploadImage() async {
    try {
      final repository = ref.read(apiRepositoryProvider);

      state = const AsyncValue.loading();
      final selectedImage = await ref.read(pickImageNotifierProvider.future);
      final imagePaths = await repository.uploadImage(
        selectedImage: selectedImage,
      );
      state = AsyncValue.data(imagePaths);
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
