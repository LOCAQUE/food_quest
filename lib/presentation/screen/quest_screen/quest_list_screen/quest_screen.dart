// ignore_for_file: cascade_invocations

import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:food_quest/domain/application/quest_list/notifier/quest_list_notifier.dart';
import 'package:food_quest/domain/entity/question.dart';
import 'package:food_quest/presentation/component/loading_widget.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:food_quest/gen/colors.gen.dart';
import 'package:food_quest/presentation/component/question_tile.dart';
import 'package:food_quest/presentation/screen/quest_screen/component/make_question_modal.dart';
import 'package:food_quest/routes/app_router.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

@RoutePage()
class QuestAutoRouterScreen extends AutoRouter {
  const QuestAutoRouterScreen({super.key});
}

@RoutePage()
class QuestScreen extends HookConsumerWidget {
  const QuestScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    final questList = useState<List<QuestionResponse>?>([]);
    final questListNotifier = ref.watch(questListNotifierProvider);

    questListNotifier.when(
      data: (list) {
        questList.value = list;
      },
      loading: () {
        return const LoadingWidget();
      },
      error: (error, stackTrace) {
        showTopSnackBar(
          Overlay.of(context),
          CustomSnackBar.error(
            message: error.toString(),
          ),
        );
      },
    );

    if (questList.value!.isEmpty) {
      return const Center(child: Text('質問がありません'));
    }

    return Scaffold(
      body: Stack(
        children: <Widget>[
          ListView.builder(
            itemCount: questList.value!.length,
            itemBuilder: (context, index) {
              final question = questList.value![index];

              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
                child: QuestionTile(
                  question: question,
                  onTap: () {
                    context.pushRoute(QuestDetailRoute(question: question));
                  },
                ),
              );
            },
            // itemExtent: 100,
          ),
          Positioned(
            bottom: height * 0.05,
            right: width * 0.07,
            child: ElevatedButton(
              onPressed: () {
                MakeQuestionModal.show(
                  context: context,
                  isQuestion: true,
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColor.primaryColor, // ボタンの背景色を赤に設定
                shape: const CircleBorder(), // ボタンの形を円に設定
                padding: const EdgeInsets.all(20), // ボタンのパディングを設定
              ),
              child: const Icon(Icons.note),
            ),
          ),
        ],
      ),
    );
  }
}
