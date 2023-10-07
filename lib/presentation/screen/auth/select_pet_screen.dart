import 'package:flutter/material.dart';

class PetSelectPage extends StatelessWidget {
  const PetSelectPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: PetSelector(),
    );
  }
}

class PetSelector extends StatefulWidget {
  const PetSelector({super.key});

  @override
  _PetSelectorState createState() => _PetSelectorState();
}

class _PetSelectorState extends State<PetSelector> {
  int? _selectedPet;

  @override
  Widget build(BuildContext context) {
    return Column(
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
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10), 
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  _selectedPet = index;
                });
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black, backgroundColor: Colors.white, 
                shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 0.1),
                  borderRadius: BorderRadius.circular(5),
                ),
                padding: const EdgeInsets.symmetric(
                  vertical: 20, 
                  horizontal: 24,),
              ),
              child: Row(
                children: [
                  Container(
                    width: 80,
                    height: 80,
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
                  if (_selectedPet == index)
                    const Positioned(
                      child: Icon(Icons.check_circle, color: Colors.orange),
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
              onPressed: _selectedPet != null
                  ? () {
                      // 確認ボタンが押されたときの処理をここに書く
                    }
                  : null,
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: _selectedPet != null ? Colors.orange : Colors.grey[300],
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
    );
  }
}
