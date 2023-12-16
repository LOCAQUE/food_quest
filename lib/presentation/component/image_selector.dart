// ignore_for_file: await_only_futures

import 'dart:io';

import 'package:flutter/material.dart';

import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_picker/image_picker.dart';

import 'package:food_quest/domain/application/pick_image/notifier/pick_image_notifier.dart';
import 'package:food_quest/presentation/component/loading_widget.dart';

class ImageSelectWidget extends HookConsumerWidget {
  const ImageSelectWidget({
    required this.onlySingleImage,
    super.key,
  });

  final bool onlySingleImage;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final imageList = useState<List<XFile>>([]);
    final pickImageList = ref.watch(pickImageNotifierProvider);
    final notifier = ref.watch(pickImageNotifierProvider.notifier);

    pickImageList.when(
      data: (data) => imageList.value = data,
      loading: () => const LoadingWidget(),
      error: (e, s) => Exception(e),
    );
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          if (imageList.value.isNotEmpty) ...[
            for (var i = 0; i < imageList.value.length; i++)
              ImageView(image: imageList.value[i], index: i),
          ],
          ImageSelecterButton(
            onTap: () async {
              await notifier.pickImageForlibrary(
                context: context,
                onlySingleImage: onlySingleImage,
              );
            },
            icon: const Icon(
              Icons.photo_library,
            ),
          ),
          ImageSelecterButton(
            onTap: () async {
              await notifier.pickImageForCamera();
            },
            icon: const Icon(
              Icons.camera_alt,
            ),
          ),
          const Gap(8),
        ],
      ),
    );
  }
}

//画像を選択するボタン
class ImageSelecterButton extends StatelessWidget {
  const ImageSelecterButton({
    required this.onTap,
    required this.icon,
    super.key,
  });

  final VoidCallback onTap;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: SizedBox(
        height: 80,
        width: 80,
        child: ElevatedButton(
          onPressed: onTap,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.grey,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          child: SizedBox(
            height: 30,
            width: 30,
            child: icon,
          ),
        ),
      ),
    );
  }
}

//選択した画像を表示する
class ImageView extends HookConsumerWidget {
  const ImageView({
    required this.image,
    required this.index,
    super.key,
  });

  final XFile image;
  final int index;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.watch(pickImageNotifierProvider.notifier);

    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4),
          child: SizedBox(
            height: 80,
            width: 80,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.file(
                File(
                  image.path,
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Positioned(
          top: 5,
          right: 10,
          child: Container(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black,
            ),
            padding: const EdgeInsets.all(4),
            child: InkWell(
              onTap: () {
                notifier.removeImage(index: index);
              },
              child: const Icon(
                Icons.close,
                color: Colors.white,
                size: 16,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
