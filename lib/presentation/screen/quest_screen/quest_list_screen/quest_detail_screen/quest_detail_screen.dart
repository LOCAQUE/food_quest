import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:food_quest/domain/application/answer/usecase/grouped_answers.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:food_quest/domain/entity/answer.dart';
import 'package:food_quest/domain/entity/question.dart';
import 'package:food_quest/foundation/supabase_client_provider.dart';
import 'package:food_quest/gen/colors.gen.dart';
import 'package:food_quest/presentation/component/answer_tile.dart';
import 'package:food_quest/presentation/component/loading_widget.dart';
import 'package:food_quest/presentation/component/quest_card.dart';
import 'package:food_quest/presentation/screen/quest_screen/quest_list_screen/quest_detail_screen/make_answer_modal.dart';

@RoutePage()
class QuestDetailScreen extends HookConsumerWidget {
  const QuestDetailScreen({required this.question, super.key});

  final QuestionResponse question;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLoading = useState<bool>(false);
    final bestAnswer = useState<List<Answer>?>([]);
    final notBestAnswers = useState<List<Answer>?>([]);
    final groupedAnswersNotifier =
        ref.watch(GroupedAnswersNotfiierProvider(questId: question.id));
    final currentUserId = ref.read(supabaseCurrentUser)!.id;
    final isMyQuest = question.isMyQuest(currentUserId: currentUserId);
    //ベストアンサーがあるかどうか
    final isContainBestAnswer = useState<bool>(false);

    groupedAnswersNotifier.when(
      data: (value) {
        bestAnswer.value = value!['isBestAnswer'];
        notBestAnswers.value = value['notBestAnswer'];
        isContainBestAnswer.value = value['isBestAnswer']!.isNotEmpty;
        isLoading.value = false;
      },
      loading: () {
        isLoading.value = true;
      },
      error: (error, stackTrace) {
        debugPrint(error.toString());
      },
    );

    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 12, top: 28),
                  child: TextButton(
                    child: const Text(
                      'キャンセル',
                      style: TextStyle(color: AppColor.textColor),
                    ),
                    onPressed: () {
                      context.popRoute();
                    },
                  ),
                ),
              ),
              const Gap(8),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                //質問
                child: QuestCard(
                  question: question,
                  onTap: () {},
                ),
              ),
              const Gap(20),
              if (isLoading.value) const LoadingWidget(),
              if (bestAnswer.value!.isEmpty && notBestAnswers.value!.isEmpty)
                const Column(
                  children: [
                    Gap(16),
                    Center(child: Text('回答がありません')),
                  ],
                ),

              //ベストアンサー
              if (bestAnswer.value!.isNotEmpty)
                BestAnswerWidget(
                  bestAnswer: bestAnswer,
                  question: question,
                ),

              //その他の回答
              if (notBestAnswers.value!.isNotEmpty)
                NotBestAnswers(
                  notBestAnswers: notBestAnswers,
                  question: question,
                  isMyQuest: isMyQuest,
                  isContainBestAnswer: isContainBestAnswer.value,
                ),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          MakeAnswerModal.show(
            context: context,
            content: question.contents,
            questId: question.id,
          );
        },
        backgroundColor: AppColor.primaryColor,
        child: const Icon(Icons.add),
      ),
    );
  }
}

class BestAnswerWidget extends StatelessWidget {
  const BestAnswerWidget({
    required this.bestAnswer,
    required this.question,
    super.key,
  });

  final ValueNotifier<List<Answer>?> bestAnswer;
  final QuestionResponse question;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'ベストアンサー',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
        ...List.generate(bestAnswer.value!.length, (index) {
          return BestAnswerTile(
            answer: bestAnswer.value![index],
            user: question.users!,
            isBestAnswer: true,
          );
        }),
        const Gap(20),
      ],
    );
  }
}

class NotBestAnswers extends StatelessWidget {
  const NotBestAnswers({
    required this.notBestAnswers,
    required this.question,
    required this.isMyQuest,
    required this.isContainBestAnswer,
    super.key,
  });

  final ValueNotifier<List<Answer>?> notBestAnswers;
  final QuestionResponse question;
  final bool isMyQuest;
  final bool isContainBestAnswer;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'その他の回答',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
        ...List.generate(notBestAnswers.value!.length, (index) {
          return NotBestAnswerTile(
            answer: notBestAnswers.value![index],
            user: question.users!,
            isMyQuest: isMyQuest,
            questId: question.id,
            isContainBestAnswer: isContainBestAnswer,
          );
        })
      ],
    );
  }
}
