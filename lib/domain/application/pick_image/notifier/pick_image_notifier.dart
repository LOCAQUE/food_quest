import 'package:flutter/material.dart';

import 'package:image_picker/image_picker.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:food_quest/foundation/image_picker_client_provier.dart';
import 'package:food_quest/presentation/component/error_dialog.dart';

part 'pick_image_notifier.g.dart';

//ギャラリーから写真を選択する
@riverpod
class PickImageNotifier extends _$PickImageNotifier {
  @override
  Future<List<XFile>> build() async {
    return [];
  }

//ギャラリーから写真を選択する
  Future<void> pickImageForlibrary({
    required BuildContext context,
    required bool onlySingleImage,
  }) async {
    try {
      state = const AsyncValue.loading();
      final imagePicker = ref.watch(imagePickerClientProvider);
      final pickedFiles = await imagePicker.pickMultiImage();
      if (pickedFiles.length >= (onlySingleImage ? 2 : 3)) {
        // 3枚以上の画像が選択された場合、ダイアログを表示
        await ErrorDialog.show(
          context,
          onlySingleImage ? '一枚しか選択できません' : '画像は3枚以上は選択できません',
        );
        // state を初期化
        state = const AsyncValue.data([]);
      } else {
        state = AsyncValue.data(pickedFiles);
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  //カメラで写真を撮る
  Future<void> pickImageForCamera() async {
    try {
      final imagePicker = ref.watch(imagePickerClientProvider);

      state = const AsyncValue.loading();
      final pickedFile =
          await imagePicker.pickImage(source: ImageSource.camera);
      // カメラで写真を撮った場合、state に追加
      if (pickedFile != null) {
        state = AsyncValue.data([...state.value ?? [], pickedFile]);
      }
    } catch (e) {
      Exception(e);
    }
  }

  //写真をリストから削除する
  void removeImage({required int index}) {
    final imageList = state.value!..removeAt(index);
    state = AsyncValue.data(imageList);
  }
}
