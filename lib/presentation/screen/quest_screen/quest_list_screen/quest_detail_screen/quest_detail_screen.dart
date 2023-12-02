import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:food_quest/domain/application/answer/notifier/answer_notifier.dart';
import 'package:food_quest/domain/entity/answer.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:food_quest/domain/entity/question.dart';
import 'package:food_quest/gen/colors.gen.dart';
import 'package:food_quest/presentation/component/answer_tile.dart';
import 'package:food_quest/presentation/component/question_tile.dart';
import 'package:food_quest/presentation/screen/quest_screen/quest_list_screen/quest_detail_screen/make_answer_modal.dart';

@RoutePage()
class QuestDetailScreen extends HookConsumerWidget {
  const QuestDetailScreen({required this.question, super.key});

  final QuestionResponse question;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final answers = useState<List<Answer>?>([]);
    useEffect(
      () {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          ref
              .read(answerNotiierProvider.notifier)
              .getAnswerList(questId: question.id);
        });
        return null;
      },
      const [],
    );

    ref.watch(answerNotiierProvider).when(
      data: (value) {
        print(value);
        answers.value = value;
      },
      loading: () {
        debugPrint('loading');
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
                child: QuestionTile(
                  question: question,
                  onTap: () {},
                ),
              ),
              const Gap(8),
              const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    '回答',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const Gap(8),
              if (answers.value!.isEmpty) const Center(child: Text('回答がありません')),
              //回答
              if (answers.value!.isNotEmpty)
                ...List.generate(answers.value!.length, (index) {
                  return AnswerTile(
                    user: question.users!,
                    answer: answers.value![index],
                  );
                }),
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
