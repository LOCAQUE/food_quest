// 説明ガイド
import 'package:flutter/material.dart';

class ExplanationGuideWidget extends StatelessWidget {
  const ExplanationGuideWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          width: MediaQuery.of(context).size.width * 0.65,
          padding: const EdgeInsets.all(16),
          child: Text(
            'クエスト一覧画面に表示させる都道府県を最大３個まで選択する事ができます。選択した都道府県のクエストが表示されます。',
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
        ),
        const Positioned(
          top: 0,
          left: 0,
          child: Icon(Icons.notification_add),
        ),
      ],
    );
  }
}
