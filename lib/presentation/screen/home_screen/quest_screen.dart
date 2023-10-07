import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:food_quest/gen/colors.gen.dart';
import 'package:food_quest/presentation/screen/home_screen/component/make_question_modal.dart';

class QuestScreen extends HookConsumerWidget {
  const QuestScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    // final currentUser =
    //     ref.watch(authNotifierProvider.select((state) => state.currentUser));

    //currentUser取れてなかったら何も表示しない
    // TODO(tenpei-peso): ダイアログとか表示させるかエラー画面作る.
    // if(currentUser == null) {
    //   return const SizedBox.shrink();
    // }

    return Scaffold(
      body: Stack(
        children: <Widget>[
          ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'あああああ',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 8),
                        const Text('ああああああああああああああああああああああああああ'),
                        const SizedBox(height: 8),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextButton(
                              onPressed: () {
                                // Comment Button was pressed
                              },
                              child: const Text('Comment'),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.thumb_up_alt_outlined),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
            // itemExtent: 100,
          ),
          Positioned(
            bottom: height * 0.15,
            right: width * 0.07,
            child: ElevatedButton(
              onPressed: () {
                MakeQuestionModal.show(context);
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
