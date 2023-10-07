import 'package:flutter/material.dart';

import 'package:food_quest/gen/colors.gen.dart';

class TaskComponent extends StatelessWidget {
  const TaskComponent({
    required this.text,
    required this.now,
    required this.achievement,
    super.key,
  });

  final String text;
  final int now;
  final int achievement;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: SizedBox(
          width: 310,
          height: 95,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(text),
                  ],
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 16, // EXPのゲージを太くします
                        child: LinearProgressIndicator(
                          borderRadius: BorderRadius.circular(50),
                          value: now / achievement,
                          backgroundColor: Colors.grey[300],
                          valueColor: const AlwaysStoppedAnimation(
                            AppColor.primaryColor,
                          ),
                        ),
                      ),
                    ),
                    Text(
                      '${now.toString()} / ${achievement.toString()}',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: AppColor.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
