// ignore_for_file: cascade_invocations

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:food_quest/domain/application/google_map/auto_complete_search/notifier/auto_complete_search_notifier.dart';
import 'package:food_quest/domain/application/google_map/place_detail/place_detail_notifier.dart';
import 'package:food_quest/domain/application/tour/notifier/tour_road_map_notifier.dart';
import 'package:food_quest/presentation/component/loading_widget.dart';
import 'package:gap/gap.dart';
import 'package:google_place/google_place.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:food_quest/gen/colors.gen.dart';

class RoadMapSpotSreachModal extends HookConsumerWidget {
  const RoadMapSpotSreachModal({
    required this.context,
    required this.tourId,
    required this.dayIndex,
    super.key,
  });

  final BuildContext context;
  final int tourId;
  //日にち
  final int dayIndex;

  static Future<void> show({
    required BuildContext context,
    required int tourId,
    required int dayIndex,
  }) async {
    await showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.white,
      builder: (context) => RoadMapSpotSreachModal(
        context: context,
        tourId: tourId,
        dayIndex: dayIndex,
      ),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loading = useState(false);
    final predictions = useState<List<AutocompletePrediction>?>([]);
    final autoCompleate = ref.watch(autoCompleteSearchNotifierProvider);

    autoCompleate.when(
      data: (data) {
        predictions.value = data;
        loading.value = false;
      },
      loading: () {
        loading.value = true;
      },
      error: (error, stackTrace) {
        debugPrint(error.toString());
      },
    );

    if (loading.value) return const LoadingWidget();

    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.9,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //閉じるボタン
            TextButton(
              child: const Text(
                'キャンセル',
                style: TextStyle(color: AppColor.textColor),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            const Gap(16),
            const Align(
              child: Text(
                'スポット検索',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Gap(8),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                  color: Colors.grey,
                ),
              ),
              child: TextField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: '検索',
                  border: InputBorder.none,
                ),
                onSubmitted: (value) {
                  ref
                      .read(autoCompleteSearchNotifierProvider.notifier)
                      .search(word: value);
                },
              ),
            ),
            const Gap(16),
            Flexible(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: predictions.value?.length ?? 0,
                itemBuilder: (context, index) {
                  final placeId = predictions.value?[index].placeId ?? '';
                  final description =
                      predictions.value?[index].description ?? '';

                  return Card(
                    child: ListTile(
                      title: Text(description),
                      onTap: () async {
                        // //場所の詳細情報を取得する
                        final placeDetail = await ref
                            .read(placeDetailNotifierProvider.notifier)
                            .searchDetail(
                              placeId: placeId,
                            );
                        // 詳細情報をDBに保存
                        await ref
                            .read(
                              TourRoadMapNotifierProvider(tourId: tourId)
                                  .notifier,
                            )
                            .createTourRoadMap(
                              day: dayIndex + 1,
                              tourId: tourId,
                              address: placeDetail!.result?.formattedAddress,
                              detailId: '1',
                              name: placeDetail.result?.name,
                              longitude: placeDetail
                                  .result?.geometry?.location?.lng
                                  ?.toInt(),
                              latitude: placeDetail
                                  .result?.geometry?.location?.lat
                                  ?.toInt(),
                              imagePath:
                                  placeDetail.result?.photos?[0].photoReference,
                            );
                        await ref.refresh(
                          TourRoadMapNotifierProvider(tourId: tourId),
                        );
                        await context.popRoute();
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
