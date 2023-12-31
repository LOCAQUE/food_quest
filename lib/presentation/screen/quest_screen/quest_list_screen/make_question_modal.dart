// ignore_for_file: cascade_invocations

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:food_quest/presentation/component/loading_widget.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:food_quest/domain/application/my_quest/notifier/my_quest_notifier.dart';
import 'package:food_quest/domain/application/quest_list/notifier/quest_list_notifier.dart';
import 'package:food_quest/domain/application/quest_list/usecase/upload_image_usecase.dart';
import 'package:food_quest/domain/entity/constants/list.dart';
import 'package:food_quest/gen/colors.gen.dart';
import 'package:food_quest/presentation/%20ui_provier/filter_chip_list.dart';
import 'package:food_quest/presentation/component/button.dart';
import 'package:food_quest/presentation/component/custom_date_picker.dart';
import 'package:food_quest/presentation/component/custom_picker.dart';
import 'package:food_quest/presentation/component/filter_chip.dart';
import 'package:food_quest/presentation/component/image_selector.dart';

class MakeQuestionModal extends HookConsumerWidget {
  const MakeQuestionModal({
    required this.context,
    this.content,
    super.key,
  });

  final BuildContext context;
  final String? content;

  static Future<void> show({
    required BuildContext context,
    String? content,
  }) async {
    await showModalBottomSheet<void>(
      isDismissible: false,
      enableDrag: false,
      useRootNavigator: true,
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.white,
      builder: (context) => MakeQuestionModal(
        context: context,
        content: content,
      ),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final content = useTextEditingController();
    final minimumBudget = useTextEditingController(text: '0');
    final maximumBudget = useTextEditingController(text: '0');
    final deadLine = useTextEditingController();
    final prefecture = useTextEditingController();

    final usecase = ref.watch(uploadImageUsecaseProvider.notifier);
    final filterChipList = ref.watch(filterChipListProvider);
    final isKeyboard = useState(false);
    final loading = useState(false);
    final textFieldScrollController = useScrollController();

    useEffect(
      () {
        final keyboard = KeyboardVisibilityController();
        // キーボードの表示を監視
        final keyboardSubscription = keyboard.onChange.listen((visible) {
          if (!visible) {
            FocusScope.of(context).unfocus();
            isKeyboard.value = false;
          } else {
            isKeyboard.value = true;
          }
        });
        return keyboardSubscription.cancel;
      },
      const [],
    );

    if (loading.value) {
      return const Scaffold(
        body: Center(
          child: LoadingWidget(),
        ),
      );
    }

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        body: Stack(
          children: [
            SingleChildScrollView(
              controller: textFieldScrollController,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //閉じるボタン
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                          child: const Text(
                            'キャンセル',
                            style: TextStyle(color: AppColor.textColor),
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                        CustomButton(
                          text: '受注',
                          variant: ButtonVariant.primary,
                          size: ButtonSize.small,
                          onPressed: () async {
                            loading.value = true;
                            // 画像をアップロード
                            await usecase.uploadImage();
                            // クエストを作成
                            await ref
                                .read(questListNotifierProvider.notifier)
                                .createQuest(
                                  content: content.text,
                                  deadLine: deadLine.text,
                                  prefecture: prefecture.text,
                                  minimumBudget: minimumBudget.text,
                                  maximumBudget: maximumBudget.text,
                                );
                            await ref.refresh(myQuestNotifierProvider);
                            loading.value = false;
                            await context.popRoute();

                            // providerを強制破棄させる
                          },
                        ),
                      ],
                    ),
                    const Gap(16),
                    Row(
                      children: [
                        Wrap(
                          spacing: 8,
                          children: [
                            ...questChipList
                                .map((title) => FliterChipWidget(title: title)),
                          ],
                        ),
                      ],
                    ),
                    const Gap(16),
                    CustomPicker(
                      title: 'エリア',
                      options: prefectures,
                      controller: prefecture,
                    ),
                    const Gap(16),
                    CustomDatePicker(
                      title: '締切日',
                      controller: deadLine,
                    ),
                    const Gap(16),
                    if (filterChipList.contains('予算'))
                      BadgetWidget(
                        minimumBudget: minimumBudget,
                        maximumBudget: maximumBudget,
                      ),
                    const Gap(8),
                    TextField(
                      controller: content,
                      maxLines: 12,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: '回答内容を入力してください',
                      ),
                      maxLength: 255,
                      onChanged: (value) {
                        // TextFieldの位置を最下部に移動させる
                        SchedulerBinding.instance.addPostFrameCallback((_) {
                          textFieldScrollController.jumpTo(
                            textFieldScrollController.position.maxScrollExtent,
                          );
                        });
                      },
                    ),
                    const Gap(16),
                    if (filterChipList.contains('画像') && !isKeyboard.value)
                      const ImageSelectWidget(onlySingleImage: false,),
                  ],
                ),
              ),
            ),
            if (filterChipList.contains('画像') && isKeyboard.value)
              const Positioned(
                bottom: 8,
                left: 8,
                child: ImageSelectWidget(onlySingleImage: false,),
              ),
          ],
        ),
      ),
    );
  }
}

//予算
class BadgetWidget extends HookConsumerWidget {
  const BadgetWidget({
    required this.minimumBudget,
    required this.maximumBudget,
    super.key,
  });

  final TextEditingController minimumBudget;
  final TextEditingController maximumBudget;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      children: [
        CustomPicker(
          title: '最低予算',
          options: priceList,
          controller: minimumBudget,
        ),
        const Gap(8),
        const Text('~'),
        const Gap(8),
        CustomPicker(
          title: '最大予算',
          options: priceList,
          controller: maximumBudget,
        ),
      ],
    );
  }
}
