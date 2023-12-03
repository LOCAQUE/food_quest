import 'package:flutter/material.dart';

import 'package:google_place/google_place.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:food_quest/foundation/google_place_client.dart';

part 'auto_complete_search_notifier.g.dart';

// googleマップの検索で候補地のリストを取得する
@riverpod
class AutoCompleteSearchNotifier extends _$AutoCompleteSearchNotifier {
  @override
  Future<List<AutocompletePrediction>?> build() async {
    return [];
  }

  Future<void> search({required String word}) async {
    try {
      final googlePlace = ref.watch(googlePlaceClient);
      state = const AsyncValue.loading();
      final result = await googlePlace.autocomplete.get(word);

      if (result == null) {
        state = AsyncValue.error('検索結果を取得できませんでした', StackTrace.current);
        debugPrint('検索結果を取得できませんでした');
        return;
      }
      final predictions = result.predictions;
      state = AsyncValue.data(predictions);
    } catch (e, stackTrace) {
      state = AsyncValue.error(e, stackTrace);
    }
  }
}
