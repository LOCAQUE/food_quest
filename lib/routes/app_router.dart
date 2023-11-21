import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:food_quest/domain/entity/question.dart';
import 'package:food_quest/presentation/screen/auth/completion_pet_screen.dart';
import 'package:food_quest/presentation/screen/auth/select_pet_screen.dart';
import 'package:food_quest/presentation/screen/auth/sign_up_profile_screen.dart';
import 'package:food_quest/presentation/screen/auth/sign_up_screen.dart';
import 'package:food_quest/presentation/screen/bottom_navigation/bottom_navigation_screen.dart';
import 'package:food_quest/presentation/screen/comming_soon_screen.dart';
import 'package:food_quest/presentation/screen/pet/pet_screen.dart';
import 'package:food_quest/presentation/screen/profile_screen/profile_screen.dart';
import 'package:food_quest/presentation/screen/quest_screen/quest_home_screen.dart';
import 'package:food_quest/presentation/screen/quest_screen/quest_list_screen/quest_detail_screen/quest_detail_screen.dart';
import 'package:food_quest/presentation/screen/quest_screen/quest_list_screen/quest_screen.dart';
import 'package:food_quest/presentation/screen/quest_screen/quest_list_screen/quest_select_prefecture/quest_select_prefecture_screen.dart';
import 'package:food_quest/presentation/screen/quest_screen/task_list_screen/task_screen.dart';
import 'package:food_quest/presentation/screen/setting_screen/setting_screen.dart';
import 'package:food_quest/presentation/screen/top.dart';
import 'package:food_quest/splash.dart';

part 'app_router.gr.dart';

final appRouterProvider = Provider((ref) {
  return AppRouter(ref);
});

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends _$AppRouter {
  AppRouter(this.ref);

  final Ref ref;

  @override
  List<AutoRoute> get routes {
    return [
      //スプラッシュ
      AutoRoute(page: SplashRoute.page, initial: true),
      //認証
      AutoRoute(
        page: TopRoute.page,
      ),
      AutoRoute(page: SignUpRoute.page),
      AutoRoute(page: SignUpProfileRoute.page),
      AutoRoute(page: SelectPetRoute.page),
      AutoRoute(page: CompletionPetRoute.page),
      //ボトムバーをつけたい場合はここにネストさせる
      AutoRoute(
        page: BottomNavigationRoute.page,
        children: [
          AutoRoute(
            page: ProfileRoute.page,
            initial: true,
          ),
          AutoRoute(page: ComingSoonRoute.page),
          AutoRoute(
            page: QuestHomeAutoRouterRoute.page,
            children: [
              AutoRoute(
                page: QuestHomeAutoRouterRoute.page,
                children: [
                  AutoRoute(page: QuestHomeRoute.page),
                  AutoRoute(page: QuestDetailRoute.page),
                ],
              ),
              AutoRoute(page: QuestSelectPrefectureRoute.page),
            ],
          ),
          AutoRoute(page: PetRoute.page),
          AutoRoute(page: SettingRoute.page),
        ],
      ),
      //ボトムバーをはずしたい場合はこちら
    ];
  }
}
