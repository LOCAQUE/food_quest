import 'package:auto_route/auto_route.dart';
import 'package:food_quest/presentation/screen/bottom_navigation/bottom_navigation_screen.dart';
import 'package:food_quest/presentation/screen/comming_soon_screen.dart';
import 'package:food_quest/presentation/screen/pet/pet_screen.dart';
import 'package:food_quest/presentation/screen/profile_screen/profile_screen.dart';
import 'package:food_quest/presentation/screen/setting_screen/setting_screen.dart';

part 'app_router.gr.dart';            

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')      
class AppRouter extends _$AppRouter {      
    
  @override      
  List<AutoRoute> get routes => [      
    AutoRoute(
      page: BottomNavigationRoute.page, 
      initial: true,
      children: [
        AutoRoute(
          page: ProfileRoute.page,
          initial: true,
        ),
        AutoRoute(
          page: ComingSoonRoute.page
        ),
        AutoRoute(
          page: PetRoute.page
        ),
        AutoRoute(
          page: SettingRoute.page
        ),
      ],
      ),
  ];
}