import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:food_quest/domain/application/quest_list/notifier/quest_list_notifier.dart';
import 'package:food_quest/domain/application/quest_list/usecase/upload_image_usecase.dart';
import 'package:food_quest/domain/entity/constants/list.dart';
import 'package:food_quest/gen/colors.gen.dart';
import 'package:food_quest/presentation/%20ui_provier/filter_chip_list.dart';
import 'package:food_quest/presentation/component/button.dart';
import 'package:food_quest/presentation/component/custom_picker.dart';
import 'package:food_quest/presentation/component/custom_text_field.dart';
import 'package:food_quest/presentation/component/filter_chip.dart';
import 'package:food_quest/presentation/component/image_selector.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class MakeTourScreen extends HookConsumerWidget {
  const MakeTourScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final content = useTextEditingController();
    final budget = useTextEditingController(text: '0');
    final prefecture = useTextEditingController();
    final title = useTextEditingController();

    final notifier = ref.watch(questListNotifierProvider.notifier);
    final usecase = ref.watch(uploadImageUsecaseProvider.notifier);
    final filterChipList = ref.watch(filterChipListProvider);
    final textFieldScrollController = useScrollController();

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
                          text: '作成',
                          variant: ButtonVariant.primary,
                          size: ButtonSize.small,
                          onPressed: () async {
                            // 画像をアップロード
                            await usecase.uploadImage();
                            // クエストを作成
                            // await notifier
                            //     .createQuest(
                            //   content: content.text,
                            //   deadLine: deadLine.text,
                            //   prefecture: prefecture.text,
                            //   minimumBudget: minimumBudget.text,
                            //   maximumBudget: maximumBudget.text,
                            // )
                            //     .then((value) {
                            //   Navigator.of(context).pop();
                            // });
                            // // providerを強制破棄させる
                            // ref.refresh(myQuestNotifierProvider);
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
                    if (filterChipList.contains('画像'))
                      Column(
                        children: [
                          Text(
                            'ツアーの表紙を設定しよう',
                            style: Theme.of(context).textTheme.headlineSmall,
                          ),
                          const Gap(8),
                          const ImageSelectWidget(onlySingleImage: true),
                          const Gap(16),
                        ],
                      ),

                    CustomTextField(
                      title: 'タイトル',
                      controller: title,
                      hintText: 'タイトルを設定してください',
                    ),
                    const Gap(16),

                    CustomPicker(
                      title: 'エリア',
                      options: prefectures,
                      controller: prefecture,
                    ),

                    const Gap(16),
                    if (filterChipList.contains('予算'))
                      BadgetWidget(
                        budget: budget,
                      ),
                    const Gap(8),
                    TextField(
                      controller: content,
                      maxLines: 12,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: 'ツアーの説明を入力してください',
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
                  ],
                ),
              ),
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
    required this.budget,
    super.key,
  });
  final TextEditingController budget;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        CustomPicker(
          title: '予算',
          options: priceList,
          controller: budget,
        ),
        const Gap(8),
      ],
    );
  }
}
