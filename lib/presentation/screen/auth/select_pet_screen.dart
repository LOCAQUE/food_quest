import 'package:flutter/material.dart';

import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:food_quest/domain/notifier/mon_choice_notifier.dart';
import 'package:food_quest/presentation/screen/auth/completion_pet_screen.dart';

class PetSelectPage extends HookConsumerWidget {
  const PetSelectPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedPet = useState<int?>(null);

    final monchoicenotifier = ref.watch(monchoiceNotifierProvider.notifier);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 50),
          Align(
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back_ios),
                    onPressed: () => Navigator.pop(context),
                  ),
                  const Text(
                    'Back',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8),
            child: Text(
              '育てるモンスターを選択してください',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
          const SizedBox(height: 20),
          ...List.generate(3, (index) {
            final attributes = <String>['火属性', '水属性', '土属性'];

            return Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 10,
              ),
              child: ElevatedButton(
                onPressed: () {
                  selectedPet.value = index;
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.black,
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 0.1),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                child: Row(
                  children: [
                    Container(
                      width: 120,
                      height: 120,
                      color: Colors.black,
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        children: [
                          Text('モンスター${index + 1}'),
                          Text(attributes[index]),
                        ],
                      ),
                    ),
                    if (selectedPet.value == index)
                      const Positioned(
                        child: Icon(
                          Icons.check_circle,
                          color: Colors.orange,
                        ),
                      ),
                  ],
                ),
              ),
            );
          }),
          const SizedBox(height: 40),
          Center(
            child: SizedBox(
              width: 250, // ボタンの横幅を調整
              child: ElevatedButton(
                onPressed: selectedPet.value != null
                    ? () {
                        monchoicenotifier.addMonster(selectedPet.value!);
                        Navigator.push(
                          context,
                          MaterialPageRoute<void>(
                            builder: (context) 
                            => const CompletionPetScreen(),
                          ),
                        );
                      }
                    : null,
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: selectedPet.value != null
                      ? Colors.orange
                      : Colors.grey[300],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 20),
                ),
                child: const Text('次へ'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
