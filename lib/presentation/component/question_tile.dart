import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:food_quest/presentation/component/swiper_image.dart';

import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:food_quest/domain/entity/question.dart';

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
          child: QuestionTile(question: question, onTap: onTap),
        );
      },
      // itemExtent: 100,
    );
  }
}

class QuestionTile extends StatelessWidget {
  const QuestionTile({
    required this.question,
    required this.onTap,
    super.key,
  });

  final QuestionResponse question;
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
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
                      Container(
                        width: 32,
                        height: 32,
                        decoration: const BoxDecoration(
                          color: Colors.grey,
                          shape: BoxShape.circle,
                        ),
                      ),
                      const Gap(4),
                      // TODO: ユーザ名を表示する
                      // Text(question.users?.name ?? '名無し'),
                      const Text(
                        '名無し',
                        style: TextStyle(fontSize: 14),
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
              Text(question.contents),
              const Gap(12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Row(
                    children: [
                      Icon(Icons.chat_bubble, size: 16, color: Colors.grey),
                      Gap(4),
                      // TODO: コメント数を表示する
                      Text('10'),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(Icons.bookmark, size: 16, color: Colors.grey),
                      const Gap(8),
                      Row(
                        children: [
                          Image.asset('assets/images/point.png', width: 16),
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
