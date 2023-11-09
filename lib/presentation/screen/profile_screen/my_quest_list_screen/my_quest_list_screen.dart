// ignore_for_file: cascade_invocations

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:food_quest/domain/application/my_quest/notifier/my_quest_notifier.dart';
import 'package:food_quest/domain/entity/question.dart';
import 'package:food_quest/presentation/component/question_tile.dart';
import 'package:food_quest/routes/app_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

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
        return const Center(child: CircularProgressIndicator());
      },
      error: (error, stackTrace) {
        return const Center(child: Text('エラーが発生しました'));
      },
    );

    if(myQuestList.value!.isEmpty) {
      return const Center(child: Text('質問がありません'));
    }

    return Scaffold(
      body: ListView.builder(
        itemCount: myQuestList.value?.length,
        itemBuilder: (context, index) {
          final question = myQuestList.value?[index];

          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
            child: QuestionTile(
              question: question!,
              onTap: () {
                context.pushRoute(
                  QuestDetailRoute(question: question));
              },
            ),
          );
        },
        // itemExtent: 100,
      ),
    );
  }
}
