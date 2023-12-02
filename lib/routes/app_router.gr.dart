// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    BottomNavigationRouterRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const BottomNavigationRouterScreen(),
      );
    },
    BottomNavigationRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const BottomNavigationScreen(),
      );
    },
    CommingSoonRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CommingSoonScreen(),
      );
    },
    CompletionPetRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CompletionPetScreen(),
      );
    },
    MapAutoRouterRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MapAutoRouterScreen(),
      );
    },
    MapRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MapScreen(),
      );
    },
    MapSearchRoute.name: (routeData) {
      return AutoRoutePage<Location?>(
        routeData: routeData,
        child: const MapSearchScreen(),
      );
    },
    PetRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const PetScreen(),
      );
    },
    ProfileRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ProfileScreen(),
      );
    },
    QuestAutoRouterRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const QuestAutoRouterScreen(),
      );
    },
    QuestDetailRoute.name: (routeData) {
      final args = routeData.argsAs<QuestDetailRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: QuestDetailScreen(
          question: args.question,
          key: args.key,
        ),
      );
    },
    QuestHomeAutoRouterRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const QuestHomeAutoRouterScreen(),
      );
    },
    QuestHomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const QuestHomeScreen(),
      );
    },
    QuestImageDetailRoute.name: (routeData) {
      final args = routeData.argsAs<QuestImageDetailRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: QuestImageDetailScreen(
          tag: args.tag,
          imageUrl: args.imageUrl,
          key: args.key,
        ),
      );
    },
    QuestRoute.name: (routeData) {
      final args = routeData.argsAs<QuestRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: QuestScreen(
          questions: args.questions,
          key: args.key,
        ),
      );
    },
    QuestSelectPrefectureRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const QuestSelectPrefectureScreen(),
      );
    },
    RecommendedSpotsAutoRouterRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const RecommendedSpotsAutoRouterScreen(),
      );
    },
    RecommendedSpotsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const RecommendedSpotsScreen(),
      );
    },
    SelectPetRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SelectPetScreen(),
      );
    },
    SettingRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SettingScreen(),
      );
    },
    SignUpProfileRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SignUpProfileScreen(),
      );
    },
    SignUpRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SignUpScreen(),
      );
    },
    SplashRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SplashScreen(),
      );
    },
    TaskRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const TaskScreen(),
      );
    },
    TopRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const TopScreen(),
      );
    },
  };
}

/// generated route for
/// [BottomNavigationRouterScreen]
class BottomNavigationRouterRoute extends PageRouteInfo<void> {
  const BottomNavigationRouterRoute({List<PageRouteInfo>? children})
      : super(
          BottomNavigationRouterRoute.name,
          initialChildren: children,
        );

  static const String name = 'BottomNavigationRouterRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [BottomNavigationScreen]
class BottomNavigationRoute extends PageRouteInfo<void> {
  const BottomNavigationRoute({List<PageRouteInfo>? children})
      : super(
          BottomNavigationRoute.name,
          initialChildren: children,
        );

  static const String name = 'BottomNavigationRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CommingSoonScreen]
class CommingSoonRoute extends PageRouteInfo<void> {
  const CommingSoonRoute({List<PageRouteInfo>? children})
      : super(
          CommingSoonRoute.name,
          initialChildren: children,
        );

  static const String name = 'CommingSoonRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CompletionPetScreen]
class CompletionPetRoute extends PageRouteInfo<void> {
  const CompletionPetRoute({List<PageRouteInfo>? children})
      : super(
          CompletionPetRoute.name,
          initialChildren: children,
        );

  static const String name = 'CompletionPetRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MapAutoRouterScreen]
class MapAutoRouterRoute extends PageRouteInfo<void> {
  const MapAutoRouterRoute({List<PageRouteInfo>? children})
      : super(
          MapAutoRouterRoute.name,
          initialChildren: children,
        );

  static const String name = 'MapAutoRouterRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MapScreen]
class MapRoute extends PageRouteInfo<void> {
  const MapRoute({List<PageRouteInfo>? children})
      : super(
          MapRoute.name,
          initialChildren: children,
        );

  static const String name = 'MapRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MapSearchScreen]
class MapSearchRoute extends PageRouteInfo<void> {
  const MapSearchRoute({List<PageRouteInfo>? children})
      : super(
          MapSearchRoute.name,
          initialChildren: children,
        );

  static const String name = 'MapSearchRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [PetScreen]
class PetRoute extends PageRouteInfo<void> {
  const PetRoute({List<PageRouteInfo>? children})
      : super(
          PetRoute.name,
          initialChildren: children,
        );

  static const String name = 'PetRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ProfileScreen]
class ProfileRoute extends PageRouteInfo<void> {
  const ProfileRoute({List<PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [QuestAutoRouterScreen]
class QuestAutoRouterRoute extends PageRouteInfo<void> {
  const QuestAutoRouterRoute({List<PageRouteInfo>? children})
      : super(
          QuestAutoRouterRoute.name,
          initialChildren: children,
        );

  static const String name = 'QuestAutoRouterRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [QuestDetailScreen]
class QuestDetailRoute extends PageRouteInfo<QuestDetailRouteArgs> {
  QuestDetailRoute({
    required QuestionResponse question,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          QuestDetailRoute.name,
          args: QuestDetailRouteArgs(
            question: question,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'QuestDetailRoute';

  static const PageInfo<QuestDetailRouteArgs> page =
      PageInfo<QuestDetailRouteArgs>(name);
}

class QuestDetailRouteArgs {
  const QuestDetailRouteArgs({
    required this.question,
    this.key,
  });

  final QuestionResponse question;

  final Key? key;

  @override
  String toString() {
    return 'QuestDetailRouteArgs{question: $question, key: $key}';
  }
}

/// generated route for
/// [QuestHomeAutoRouterScreen]
class QuestHomeAutoRouterRoute extends PageRouteInfo<void> {
  const QuestHomeAutoRouterRoute({List<PageRouteInfo>? children})
      : super(
          QuestHomeAutoRouterRoute.name,
          initialChildren: children,
        );

  static const String name = 'QuestHomeAutoRouterRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [QuestHomeScreen]
class QuestHomeRoute extends PageRouteInfo<void> {
  const QuestHomeRoute({List<PageRouteInfo>? children})
      : super(
          QuestHomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'QuestHomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [QuestImageDetailScreen]
class QuestImageDetailRoute extends PageRouteInfo<QuestImageDetailRouteArgs> {
  QuestImageDetailRoute({
    required String tag,
    required String imageUrl,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          QuestImageDetailRoute.name,
          args: QuestImageDetailRouteArgs(
            tag: tag,
            imageUrl: imageUrl,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'QuestImageDetailRoute';

  static const PageInfo<QuestImageDetailRouteArgs> page =
      PageInfo<QuestImageDetailRouteArgs>(name);
}

class QuestImageDetailRouteArgs {
  const QuestImageDetailRouteArgs({
    required this.tag,
    required this.imageUrl,
    this.key,
  });

  final String tag;

  final String imageUrl;

  final Key? key;

  @override
  String toString() {
    return 'QuestImageDetailRouteArgs{tag: $tag, imageUrl: $imageUrl, key: $key}';
  }
}

/// generated route for
/// [QuestScreen]
class QuestRoute extends PageRouteInfo<QuestRouteArgs> {
  QuestRoute({
    required List<QuestionResponse> questions,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          QuestRoute.name,
          args: QuestRouteArgs(
            questions: questions,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'QuestRoute';

  static const PageInfo<QuestRouteArgs> page = PageInfo<QuestRouteArgs>(name);
}

class QuestRouteArgs {
  const QuestRouteArgs({
    required this.questions,
    this.key,
  });

  final List<QuestionResponse> questions;

  final Key? key;

  @override
  String toString() {
    return 'QuestRouteArgs{questions: $questions, key: $key}';
  }
}

/// generated route for
/// [QuestSelectPrefectureScreen]
class QuestSelectPrefectureRoute extends PageRouteInfo<void> {
  const QuestSelectPrefectureRoute({List<PageRouteInfo>? children})
      : super(
          QuestSelectPrefectureRoute.name,
          initialChildren: children,
        );

  static const String name = 'QuestSelectPrefectureRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [RecommendedSpotsAutoRouterScreen]
class RecommendedSpotsAutoRouterRoute extends PageRouteInfo<void> {
  const RecommendedSpotsAutoRouterRoute({List<PageRouteInfo>? children})
      : super(
          RecommendedSpotsAutoRouterRoute.name,
          initialChildren: children,
        );

  static const String name = 'RecommendedSpotsAutoRouterRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [RecommendedSpotsScreen]
class RecommendedSpotsRoute extends PageRouteInfo<void> {
  const RecommendedSpotsRoute({List<PageRouteInfo>? children})
      : super(
          RecommendedSpotsRoute.name,
          initialChildren: children,
        );

  static const String name = 'RecommendedSpotsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SelectPetScreen]
class SelectPetRoute extends PageRouteInfo<void> {
  const SelectPetRoute({List<PageRouteInfo>? children})
      : super(
          SelectPetRoute.name,
          initialChildren: children,
        );

  static const String name = 'SelectPetRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SettingScreen]
class SettingRoute extends PageRouteInfo<void> {
  const SettingRoute({List<PageRouteInfo>? children})
      : super(
          SettingRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SignUpProfileScreen]
class SignUpProfileRoute extends PageRouteInfo<void> {
  const SignUpProfileRoute({List<PageRouteInfo>? children})
      : super(
          SignUpProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignUpProfileRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SignUpScreen]
class SignUpRoute extends PageRouteInfo<void> {
  const SignUpRoute({List<PageRouteInfo>? children})
      : super(
          SignUpRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignUpRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SplashScreen]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute({List<PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [TaskScreen]
class TaskRoute extends PageRouteInfo<void> {
  const TaskRoute({List<PageRouteInfo>? children})
      : super(
          TaskRoute.name,
          initialChildren: children,
        );

  static const String name = 'TaskRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [TopScreen]
class TopRoute extends PageRouteInfo<void> {
  const TopRoute({List<PageRouteInfo>? children})
      : super(
          TopRoute.name,
          initialChildren: children,
        );

  static const String name = 'TopRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SignInRoute]
class SignInRoute extends PageRouteInfo<void> {
  const SignInRoute({List<PageRouteInfo>? children})
      : super(
          SignInRoute.name,
          initialChildren: children,
        );
  static const String name = 'SignInRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
