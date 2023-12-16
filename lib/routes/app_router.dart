import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:food_quest/domain/entity/tour.dart';
import 'package:food_quest/presentation/screen/tour/make_tour/make_tour_screen.dart';
import 'package:food_quest/presentation/screen/tour/todo_tour/todo_tour_list_screen.dart';
import 'package:food_quest/presentation/screen/tour/tour_detail/tab/road_map_detail_screen.dart';
import 'package:food_quest/presentation/screen/tour/tour_detail/tab/tour_detail_screen.dart';
import 'package:food_quest/presentation/screen/tour/tour_detail/tab/tour_road_map_screen.dart';
import 'package:food_quest/presentation/screen/tour/tour_detail/tour_detail_home_screen.dart';
import 'package:food_quest/presentation/screen/tour/tour_home_screen.dart';
import 'package:google_place/google_place.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:food_quest/domain/entity/question.dart';
import 'package:food_quest/presentation/screen/auth/completion_pet_screen.dart';
import 'package:food_quest/presentation/screen/auth/select_pet_screen.dart';
import 'package:food_quest/presentation/screen/auth/sign_in_screen.dart';
import 'package:food_quest/presentation/screen/auth/sign_up_profile_screen.dart';
import 'package:food_quest/presentation/screen/auth/sign_up_screen.dart';
import 'package:food_quest/presentation/screen/bottom_navigation/bottom_navigation_screen.dart';
import 'package:food_quest/presentation/screen/pet/pet_screen.dart';
import 'package:food_quest/presentation/screen/profile_screen/profile_screen.dart';
import 'package:food_quest/presentation/screen/quest_screen/quest_home_screen.dart';
import 'package:food_quest/presentation/screen/quest_screen/quest_list_screen/quest_detail_screen/quest_detail_screen.dart';
import 'package:food_quest/presentation/screen/quest_screen/quest_list_screen/quest_detail_screen/quest_image_detail_screen.dart';
import 'package:food_quest/presentation/screen/quest_screen/quest_list_screen/quest_screen.dart';
import 'package:food_quest/presentation/screen/quest_screen/quest_list_screen/quest_select_prefecture/quest_select_prefecture_screen.dart';
import 'package:food_quest/presentation/screen/quest_screen/task_list_screen/task_screen.dart';
import 'package:food_quest/presentation/screen/recommended_spots_screen/map_screen/map_screen.dart';
import 'package:food_quest/presentation/screen/recommended_spots_screen/map_screen/map_search_screen.dart';
import 'package:food_quest/presentation/screen/recommended_spots_screen/recommended_spots_screen.dart';
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
      AutoRoute(page: SignInRoute.page),
      AutoRoute(page: SignUpRoute.page),
      AutoRoute(page: SignUpProfileRoute.page),
      AutoRoute(page: SelectPetRoute.page),
      AutoRoute(page: CompletionPetRoute.page),
      //ボトムバーをつけたい場合はここにネストさせる
      AutoRoute(
        page: BottomNavigationRoute.page,
        children: [
          AutoRoute(
            page: RecommendedSpotsAutoRouterRoute.page,
            initial: true,
            children: [
              AutoRoute(page: RecommendedSpotsRoute.page, initial: true),
              AutoRoute(page: MapRoute.page),
            ],
          ),
          AutoRoute(
            page: ProfileAutoRouterRoute.page,
            children: [
              AutoRoute(page: ProfileRoute.page, initial: true),
              AutoRoute(page: QuestDetailRoute.page),
            ],
          ),
          AutoRoute(
            page: QuestHomeAutoRouterRoute.page,
            children: [
              AutoRoute(page: QuestHomeRoute.page, initial: true),
              AutoRoute(page: QuestDetailRoute.page),
            ],
          ),
          AutoRoute(page: PetRoute.page),
          AutoRoute(
            page: TourHomeAutoRouterRoute.page,
            children: [
              AutoRoute(page: TourHomeRoute.page, initial: true,),
              AutoRoute(
                page: TodoTourListAutoRouterRoute.page,
                children: [
                  AutoRoute(page: TodoTourListRoute.page, initial: true),
                ],
              ),
            ],
          ),
        ],
      ),
      //ボトムバーをはずしたい場合はこちら
      AutoRoute(page: QuestSelectPrefectureRoute.page),
      AutoRoute(page: QuestImageDetailRoute.page),
      AutoRoute(page: MapSearchRoute.page),
      AutoRoute(page: MakeTourRoute.page),
      AutoRoute(page: TourDetailHomeRoute.page),
    ];
  }
}
