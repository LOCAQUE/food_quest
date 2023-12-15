import 'package:food_quest/domain/application/tour/notifier/tour_road_map_notifier.dart';
import 'package:food_quest/domain/entity/tour_road_map.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'group_tour_road_map_usecase.g.dart';

@riverpod
class GroupTourRoadMapUsecase extends _$GroupTourRoadMapUsecase {
  @override
  Future<Map<String, List<TourRoadMapResponse>>?> build({
    required int tourId,
  }) async {
    final tourRoadMapResponses =
        await ref.watch(TourRoadMapNotifierProvider(tourId: tourId).future);

    // Map型の雛形を作成
    final roadMapsByDay = {
      for (final roadMap in tourRoadMapResponses ?? [])
        roadMap.day.toString(): <TourRoadMapResponse>[],
    };

// 作成した雛形にデータを追加
// ignore: omit_local_variable_types
    for (final TourRoadMapResponse roadMap in tourRoadMapResponses ?? []) {
      final day = roadMap.day.toString();
      roadMapsByDay.putIfAbsent(day, () => []).add(roadMap);
    }
    return roadMapsByDay;
  }
}
