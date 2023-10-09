import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:food_quest/domain/entity/question.dart';

class QuestionTile extends StatelessWidget {
  const QuestionTile({
    required this.question,
    this.onTap,
    super.key,
  });

  final QuestionResponse question;
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const CircleAvatar(
                    backgroundColor: Colors.grey, // グレーの背景色を設定
                    radius: 24, // 丸の半径を調整
                    child: Icon(
                      Icons.person, // 代替のアイコンを設定
                      color: Colors.white, // アイコンの色を白に設定
                    ),
                  ),
                  const Gap(8),
                  Text(
                    question.users?.name ?? '',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              const Gap(20),
              Text(
                question.contents,
                style: const TextStyle(
                  fontSize: 14,
                ),
              ),
              const Gap(20),
              Row(
                children: [
                  const Icon(Icons.place,
                   color: Colors.black, 
                   size: 14,), // 地点のアイコン
                  const Gap(8),
                  Text(
                    question.users?.prefecture ?? '',
                    style: const TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                    ),
                  ),
                  const Gap(200),
                  Text(
                    question.formattedDeadLine,
                    style: const TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
