import 'package:auto_route/auto_route.dart';
import 'package:food_quest/foundation/supabase_client_provider.dart';
import 'package:food_quest/presentation/screen/auth/completion_pet_screen.dart';
import 'package:food_quest/presentation/screen/auth/select_pet_screen.dart';
import 'package:food_quest/presentation/screen/auth/sign_up_profile_screen.dart';
import 'package:food_quest/presentation/screen/auth/sign_up_screen.dart';
import 'package:food_quest/presentation/screen/bottom_navigation/bottom_navigation_screen.dart';
import 'package:food_quest/presentation/screen/comming_soon_screen.dart';
import 'package:food_quest/presentation/screen/pet/pet_screen.dart';
import 'package:food_quest/presentation/screen/profile_screen/profile_screen.dart';
import 'package:food_quest/presentation/screen/setting_screen/setting_screen.dart';
import 'package:food_quest/presentation/screen/top.dart';
import 'package:food_quest/splash.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

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
    final currentUser = ref.watch(supabaseCurrentUser);

    return [
      AutoRoute(page: SplashRoute.page, initial: true),
      AutoRoute(
        page: BottomNavigationRoute.page,
        children: [
          AutoRoute(
            page: ProfileRoute.page,
            initial: true,
          ),
          AutoRoute(page: ComingSoonRoute.page),
          AutoRoute(page: PetRoute.page),
          AutoRoute(page: SettingRoute.page),
        ],
      ),
      AutoRoute(page: TopRoute.page,),
      AutoRoute(page: SignUpRoute.page),
      AutoRoute(page: SignUpProfileRoute.page),
      AutoRoute(page: SelectPetRoute.page),
      AutoRoute(page: CompletionPetRoute.page),
    ];
  }
}
