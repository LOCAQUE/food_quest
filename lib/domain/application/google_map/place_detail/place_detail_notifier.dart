import 'package:food_quest/foundation/google_place_client.dart';
import 'package:google_place/google_place.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'place_detail_notifier.g.dart';

@riverpod
class PlaceDetailNotifier extends _$PlaceDetailNotifier {
  @override
  Future<DetailsResponse?> build() async {
    return null;
  }

  Future<DetailsResponse?> searchDetail({required String placeId}) async {
    try {
      final googlePlace = ref.read(googlePlaceClient);
      state = const AsyncValue.loading();
      final result = await googlePlace.details.get(placeId);

      if (result == null) {
        state = AsyncValue.error('検索結果を取得できませんでした', StackTrace.current);
        return null;
      }
      state = AsyncValue.data(result);
      return result;
    } catch (e, stackTrace) {
      state = AsyncValue.error(e, stackTrace);
    }
  }
}
