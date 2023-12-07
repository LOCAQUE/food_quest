import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:food_quest/domain/entity/constants/list.dart';
import 'package:food_quest/gen/colors.gen.dart';
import 'package:food_quest/presentation/component/custom_picker.dart';
import 'package:food_quest/presentation/component/swiper_image.dart';
import 'package:food_quest/presentation/component/translation_selector.dart';

import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:food_quest/domain/entity/question.dart';
import 'package:speech_balloon/speech_balloon.dart';

class QuestionTiles extends HookConsumerWidget {
  const QuestionTiles({
    required this.questionList,
    required this.onTap,
    super.key,
  });

  final List<QuestionResponse> questionList;
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView.builder(
      itemCount: questionList.length,
      itemBuilder: (context, index) {
        final question = questionList[index];

        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
          child: QuestCard(question: question, onTap: onTap),
        );
      },
      // itemExtent: 100,
    );
  }
}

class QuestCard extends HookConsumerWidget {
  const QuestCard({
    required this.question,
    required this.onTap,
    super.key,
  });

  final QuestionResponse question;
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isShowTranslateDialog = useState(false);
    final translatedContent = useState<String?>(null);

    return GestureDetector(
      onTap: onTap,
      child: Stack(
        children: [
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // TODO: ユーザアイコンに変更する
                      Row(
                        children: [
                          Center(
                            child: CircleAvatar(
                              radius: 24,
                              backgroundImage: Image.asset(
                                'assets/images/monster_a_1.png',
                              ).image,
                            ),
                          ),
                          const Gap(12),
                          Text(
                            question.users?.name ?? '名無し',
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                        ],
                      ),
                      const Row(
                        children: [
                          Icon(Icons.timer, size: 16, color: Colors.grey),
                          Gap(4),
                          Text('2d17h'),
                        ],
                      ),
                    ],
                  ),
                  const Gap(12),
                  if (question.questImages.isNotEmpty)
                    Center(
                      child: Column(
                        children: [
                          QuestSwiper(question: question),
                          const Gap(12),
                        ],
                      ),
                    ),
                  Text(
                    translatedContent.value ?? question.contents,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 3,
                  ),
                  const Gap(16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Row(
                        children: [
                          Icon(Icons.chat_bubble, size: 20, color: Colors.grey),
                          Gap(4),
                          // TODO: コメント数を表示する
                          Text('10'),
                        ],
                      ),
                      Row(
                        children: [
                          _TranslationIconWidget(
                            isShowTranslateDialog: isShowTranslateDialog,
                          ),
                          const Gap(8),
                          const _BookmarkIconWidget(),
                          const Gap(8),
                          Row(
                            children: [
                              SizedBox(
                                  child: Image.asset(
                                'assets/images/point.png',
                                fit: BoxFit.cover,
                              )),
                              Gap(4),
                              // TODO: ポイント数を表示する
                              Text('50'),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          if (isShowTranslateDialog.value)
            Positioned(
              bottom: MediaQuery.of(context).size.height * 0.06,
              right: MediaQuery.of(context).size.width * 0.05,
              child: TranslationDialog(
                isShowTranslateDialog: isShowTranslateDialog,
                translatedContent: translatedContent,
              ),
            ),
        ],
      ),
    );
  }
}

class TranslationDialog extends HookConsumerWidget {
  const TranslationDialog({
    required this.isShowTranslateDialog,
    required this.translatedContent,
    super.key,
  });

  final ValueNotifier<bool> isShowTranslateDialog;
  final ValueNotifier<String?> translatedContent;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //翻訳元の国
    final fromCountry = useTextEditingController();
    //翻訳先の国
    final toCountry = useTextEditingController();

    return SpeechBalloon(
      borderColor: AppColor.primaryColor,
      height: 52,
      width: MediaQuery.of(context).size.width * 0.6,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TranslationSelector(
            options: translateCountryList,
            controller: fromCountry,
          ),
          const Icon(
            Icons.swap_horiz,
          ),
          TranslationSelector(
            options: translateCountryList,
            controller: toCountry,
          ),
          TextButton(
            onPressed: () {
              isShowTranslateDialog.value = false;
            },
            child: const Text('翻訳'),
          ),
        ],
      ),
    );
  }
}

class QuestSwiper extends StatelessWidget {
  const QuestSwiper({
    required this.question,
    super.key,
  });

  final QuestionResponse question;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: MediaQuery.of(context).size.width * 0.9,
      child: Swiper(
        itemBuilder: (BuildContext context, int index) {
          final questImage = question.questImages[index];
          return SwiperImage(
            imageUrl: questImage.imageUrl,
            tag: '${question.id}-$index',
          );
        },
        itemCount: question.questImages.length,
        pagination: const SwiperPagination(),
      ),
    );
  }
}

class _BookmarkIconWidget extends HookConsumerWidget {
  const _BookmarkIconWidget();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isBookmarked = useState(false);
    return IconButton(
      padding: EdgeInsets.zero,
      constraints: const BoxConstraints(),
      icon: Icon(
        Icons.bookmark,
        size: 24,
        color: isBookmarked.value ? Colors.blue : Colors.grey,
      ),
      onPressed: () {
        //TODO valueNotifierをquestCardに渡して詳細と一覧の状態共有する。
        if (isBookmarked.value) {
          isBookmarked.value = false;
          //削除
        } else {
          isBookmarked.value = true;
          //登録
        }
      },
    );
  }
}

class _TranslationIconWidget extends HookConsumerWidget {
  const _TranslationIconWidget({required this.isShowTranslateDialog});

  final ValueNotifier<bool> isShowTranslateDialog;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return IconButton(
      padding: EdgeInsets.zero,
      constraints: const BoxConstraints(),
      icon: const Icon(
        Icons.translate,
        size: 24,
        color: Colors.blue,
      ),
      onPressed: () {
        isShowTranslateDialog.value = !isShowTranslateDialog.value;
      },
    );
  }
}
