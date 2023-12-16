import 'package:flutter/material.dart';
import 'package:food_quest/domain/entity/tour_road_map.dart';
import 'package:food_quest/domain/repositories/api_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'tour_road_map_notifier.g.dart';

// ツアーのロードマップを取得する
@riverpod
class TourRoadMapNotifier extends _$TourRoadMapNotifier {
  @override
  Future<List<TourRoadMapResponse>?> build({required int tourId}) async {
    final repository = ref.read(apiRepositoryProvider);
    final result = await repository.getTourRoadMap(tourId: tourId);

    return result;
  }

  // ツアーのロードマップを作成する
  Future<void> createTourRoadMap({
    required int day,
    required int tourId,
    String? address,
    String? detailId,
    String? name,
    int? longitude,
    int? latitude,
    String? imagePath,
  }) async {
    try {
      state = const AsyncValue.loading();
      
      final repository = ref.read(apiRepositoryProvider);
      await repository.createTourRoadMap(
        day: day,
        tourId: tourId,
        address: address,
        detailId: detailId,
        name: name,
        longitude: longitude,
        latitude: latitude,
        imagePath: imagePath,
      );
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
