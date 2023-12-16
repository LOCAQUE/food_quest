import 'package:food_quest/domain/application/tour/notifier/tour_notifier.dart';
import 'package:food_quest/domain/entity/tour.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'tour_detail_usecase.g.dart';

@riverpod
class TourDetailUsecase extends _$TourDetailUsecase {
  @override
  Future<TourResponse?> build({required int tourId}) async {
    final tourList = await ref.read(tourNotifierProvider.future);
    final targetTour =
        tourList?.where((tour) => tour.id == tourId).toList().firstOrNull;

    return Future.value(targetTour);
  }
}
