import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'tour_day_tab_count.g.dart';

@riverpod
class TourDayTabCount extends _$TourDayTabCount {
  @override
  int build({required int tabCount}){
    return tabCount;
  }
  void addDate() {
    state = state + 1;
  }

  void removeDate() {
    state = state - 1;
  }
}
