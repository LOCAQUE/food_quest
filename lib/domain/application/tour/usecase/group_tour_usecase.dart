import 'package:flutter/material.dart';
import 'package:food_quest/domain/application/tour/notifier/tour_notifier.dart';
import 'package:food_quest/domain/entity/tour.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'group_tour_usecase.g.dart';

@riverpod
class GroupTourUsecase extends _$GroupTourUsecase {
  @override
  Future<Map<String, List<TourResponse>>?> build() async {
    //ツアー一覧を取得
    final tourList = await ref.watch(tourNotifierProvider.future);

    if (tourList == null) {
      debugPrint('ツアー一覧が取得できませんでした');
      return null;
    }

    //リリース済みのツアーと未リリースのツアーに分ける
    // おすすめや全国などのツアーも分ける
    final groupedTours = <String, List<TourResponse>>{
      'release': [...tourList.where((tour) => tour.isRelease)],
      'notRelease': [...tourList.where((tour) => !tour.isRelease)],
    };
    return groupedTours;
  }
}
