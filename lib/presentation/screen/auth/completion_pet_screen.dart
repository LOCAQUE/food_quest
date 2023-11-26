import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:food_quest/domain/application/notifier/mon_choice_notifier.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:food_quest/presentation/component/button.dart';
import 'package:food_quest/routes/app_router.dart';

import 'package:food_quest/domain/entity/mon_choice_data.dart';

@RoutePage()
class CompletionPetScreen extends HookConsumerWidget {
  const CompletionPetScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final monchoicenotifier = ref.watch(monchoiceNotifierProvider.notifier);
    MonChoiceData? monNum;

    useEffect((){
      monchoicenotifier.getBaseMonster().then(
        (value) => monNum = value,
        );
      return null;
    }, [],);


    String getImagePath(int? basemonster){
      switch(basemonster){
        case 0: return 'assets/images/monster/monster1.png';
        case 1: return 'assets/images/monster/monster2.png';
        case 2: return 'assets/images/monster/monster3.png';
        default: return 'assets/images/test.png';
      }
    }
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
              color: Colors.transparent,
            ),
            child: Column(
              children: [
                const SizedBox(height: 60),
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.arrow_back_ios),
                      onPressed: () => Navigator.pop(context),
                    ),
                    const Text(
                      '選び直す',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                const Text(
                  '君に決めた！',
                  style: TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  '名前をつけてあげよう',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  'この子の名前になるよ',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                Image.asset(
                    getImagePath(monNum?.baseMonster),
                    height: 300,
                    width: 300,
                  ),
                SizedBox(
                  width: 280,
                  child: TextFormField(
                    decoration: InputDecoration(
                      filled: true, 
                      fillColor: Colors.white, 
                      hintText: 'デフォルト名',
                      hintStyle: const TextStyle(color: Colors.grey), 
                      suffixIcon: const Icon(Icons.edit, color: Colors.grey), 
                      border: OutlineInputBorder( 
                        borderRadius: BorderRadius.circular(10), 
                        borderSide: BorderSide.none, 
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                const SizedBox(height: 20),
                const Text(
                  '経験値を得ることで',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16),
                ),
                const Text(
                  '成長しいろいろな姿になります',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
          Padding(
            padding:const EdgeInsets.only(bottom: 100),
            child: CustomButton(
              text: 'はじめる',
              variant: ButtonVariant.primary,
              onPressed: () {
                context.pushRoute(const BottomNavigationRoute());
              },
            ),
          ),
        ],
      ),
    );
  }
}
