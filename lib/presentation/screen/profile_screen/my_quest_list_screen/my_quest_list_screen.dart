// ignore_for_file: cascade_invocations

import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

import 'package:food_quest/domain/application/my_quest/notifier/my_quest_notifier.dart';
import 'package:food_quest/domain/entity/question.dart';
import 'package:food_quest/presentation/component/loading_widget.dart';
import 'package:food_quest/presentation/component/quest_card.dart';
import 'package:food_quest/routes/app_router.dart';

class MyQuestListScreen extends HookConsumerWidget {
  const MyQuestListScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final myQuestList = useState<List<QuestionResponse>?>([]);
    final myQuestNotifier = ref.watch(myQuestNotifierProvider);

    myQuestNotifier.when(
      data: (list) {
        myQuestList.value = list;
      },
      loading: () {
        return const LoadingWidget();
      },
      error: (error, stackTrace) {
        //スナックバー表示
        showTopSnackBar(
          Overlay.of(context),
          CustomSnackBar.error(
            message: error.toString(),
          ),
        );
      },
    );

    if (myQuestList.value!.isEmpty) {
      return const Center(child: Text('質問がありません'));
    }

    return Scaffold(
      body: ListView.builder(
        itemCount: myQuestList.value?.length,
        itemBuilder: (context, index) {
          final question = myQuestList.value?[index];

          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
            child: QuestCard(
              question: question!,
              onTap: () {
                context.pushRoute(QuestDetailRoute(question: question));
              },
            ),
          );
        },
        // itemExtent: 100,
      ),
    );
  }
}
