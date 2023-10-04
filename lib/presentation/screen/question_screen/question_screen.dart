import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final _budgetLowerController = TextEditingController();
final _budgetUpperController = TextEditingController();
final _prefectureController = TextEditingController();
final _destinationController = TextEditingController();
final _categoryController = TextEditingController();

class QuestionScreen extends ConsumerWidget {
  const QuestionScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: IconButton(
                icon: const Icon(Icons.arrow_back_ios),
                onPressed: () => Navigator.pop(context),
              ),
            ),
            const SizedBox(height: 50),
            TextField(
              controller: _budgetLowerController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: '予算の下限',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _budgetUpperController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: '予算の上限',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _prefectureController,
              decoration: const InputDecoration(
                labelText: '都道府県',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _destinationController,
              decoration: const InputDecoration(
                labelText: '目的地',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _categoryController,
              decoration: const InputDecoration(
                labelText: 'カテゴリ',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 50),
            ElevatedButton(
              onPressed: () {
              },
              child: const Text('完了'),
            ),
          ],
        ),
      ),
    );
  }
}
