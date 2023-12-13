import 'package:flutter/material.dart';
import 'package:food_quest/domain/application/quest_list/usecase/upload_image_usecase.dart';
import 'package:food_quest/domain/entity/tour.dart';
import 'package:food_quest/domain/repositories/api_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'tour_notifier.g.dart';

@Riverpod(keepAlive: true)
class TourNotifier extends _$TourNotifier {
  @override
  Future<List<TourResponse>?> build() {
    final repository = ref.read(apiRepositoryProvider);

    return repository.getTourList();
  }

  Future<void> createTour({
    required String contents,
    required String budget,
    required String prefecture,
    required String title,
  }) async {
    try {
      state = const AsyncValue.loading();
      final repository = ref.read(apiRepositoryProvider);
      final imagePath = await ref.read(uploadImageUsecaseProvider.future);

      await repository.createTour(
        contents: contents,
        budget: budget,
        prefecture: prefecture,
        title: title,
        imagePath: imagePath.isEmpty ? '' : imagePath.first,
      );
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
