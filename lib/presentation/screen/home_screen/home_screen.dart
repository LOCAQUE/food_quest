import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_quest/gen/colors.gen.dart';
import 'package:food_quest/presentation/screen/home_screen/component/make_question_modal.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeScreen extends HookConsumerWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

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
                        Text(
                          'あああああ',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 8.0),
                        Text('ああああああああああああああああああああああああああ'),
                        SizedBox(height: 8.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextButton(
                              onPressed: () {
                                // Comment Button was pressed
                              },
                              child: Text('Comment'),
                            ),
                            IconButton(
                              onPressed: () {
                              },
                              icon: Icon(Icons.thumb_up_alt_outlined),
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
                primary: AppColor.primaryColor, // ボタンの背景色を赤に設定
                shape: const CircleBorder(), // ボタンの形を円に設定
                padding: const EdgeInsets.all(20), // ボタンのパディングを設定
              ),
              child: Icon(Icons.note),
            ),
          ),
        ],
      ),
    );
  }
}
