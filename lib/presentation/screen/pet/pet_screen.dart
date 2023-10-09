import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:food_quest/domain/entity/pets.dart';
import 'package:food_quest/gen/colors.gen.dart';
import 'package:food_quest/presentation/screen/pet/items_modal_sheet.dart';

class PetScreen extends HookConsumerWidget {
  const PetScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    const level = 2;
    const maxEXP = 150;
    const exp = 100;
    const heart = 50;

    final gif = getGifUrlForPet(Pet.caracter1, level);
    // useStateを使用してboxGifの状態を管理
    final boxGifPath = useState('assets/gif/box.gif');
    final boxOpenedGifPath = 'assets/gif/box-open.gif';

    // 宝箱のGIF画像を切り替えるメソッド
    void toggleBoxGif() {
      if (boxGifPath.value == 'assets/gif/box.gif') {
        boxGifPath.value = boxOpenedGifPath;
      } else {
        boxGifPath.value = 'assets/gif/box.gif';
      }
    }

    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/castle.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                const SizedBox(height: 50),
                // 経験値ゲージ
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Stack(
                    alignment: Alignment.centerLeft,
                    children: [
                      Column(
                        children: [
                          const SizedBox(height: 20), // 調整用
                          Row(
                            children: [
                              Expanded(
                                child: SizedBox(
                                  height: 15, // EXPのゲージを太くします
                                  width: 270,
                                  child: LinearProgressIndicator(
                                    borderRadius: BorderRadius.circular(50),
                                    value: exp / maxEXP, // 割合
                                    backgroundColor: Colors.grey[300],
                                    valueColor: const AlwaysStoppedAnimation(
                                      AppColor.primaryColor,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            alignment: Alignment.topRight,
                            child: const Text(
                              '経験値: $exp/$maxEXP',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const CircleAvatar(
                        radius: 30,
                        backgroundColor: AppColor.primaryColor,
                        child: Text(
                          '$level',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // ハートゲージ
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Stack(
                    alignment: Alignment.centerLeft,
                    children: [
                      Column(
                        children: [
                          const SizedBox(height: 20), // 調整用
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              const SizedBox(width: 40),
                              SizedBox(
                                height: 10, // ハートのゲージを太くします
                                width: 270,
                                child: LinearProgressIndicator(
                                  value: heart / 100,
                                  borderRadius: BorderRadius.circular(50),
                                  backgroundColor: Colors.grey[300],
                                  valueColor: const AlwaysStoppedAnimation(
                                    AppColor.primaryColor,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            alignment: Alignment.topRight,
                            child: const Text(
                              '満足度: $heart%',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 60),
                        child:
                            Icon(Icons.favorite, color: Colors.red, size: 40),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // キャラクターの画像
          Center(
            child: SizedBox(
              child: Image.asset(gif),
            ),
          ),
          // 宝箱の画像
          Positioned(
            left: 18, // 左側からのオフセット
            bottom: 120, // 下側からのオフセット
            width: 135,
            height: 135,
            child: GestureDetector(
              onTap: () {
                toggleBoxGif();
                showModalBottomSheet<String>(
                  context: context,
                  isScrollControlled: true,
                  builder: (BuildContext context) {
                    return const FractionallySizedBox(
                      heightFactor: 0.3,
                      child: ItemsModalSheet(),
                    );
                  },
                );
              },
              child: Image.asset(boxGifPath.value),
            ),
          ),
        ],
      ),
    );
  }
}
