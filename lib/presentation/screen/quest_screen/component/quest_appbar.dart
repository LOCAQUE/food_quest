import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';

import 'package:food_quest/routes/app_router.dart';

class TopBarWIdget extends StatelessWidget {
  const TopBarWIdget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: const EdgeInsets.only(
        left: 24,
        right: 16,
        bottom: 12,
      ),
      color: Colors.white,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Quest',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          Row(
            children: [
              IconButton(
                icon: const Icon(
                  Icons.notifications,
                  color: Colors.grey,
                ),
                onPressed: () {
                  // 通知アイコンがタップされた時の処理
                },
              ),
              IconButton(
                icon: const Icon(
                  Icons.task,
                  color: Colors.grey,
                ),
                onPressed: () {
                  // 通知アイコンがタップされた時の処理
                },
              ),
              IconButton(
                icon: const Icon(
                  Icons.location_on,
                  color: Colors.grey,
                ),
                onPressed: () {
                  context.router.push(QuestSelectPrefectureRoute());
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
