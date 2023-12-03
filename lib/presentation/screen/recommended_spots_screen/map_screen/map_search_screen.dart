// ignore_for_file: cascade_invocations

import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:google_place/google_place.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:food_quest/domain/application/google_map/auto_complete_search/notifier/auto_complete_search_notifier.dart';
import 'package:food_quest/domain/application/google_map/place_detail/place_detail_notifier.dart';
import 'package:food_quest/presentation/component/loading_widget.dart';
import 'package:food_quest/presentation/component/searc_header.dart';

@RoutePage<Location?>()
class MapSearchScreen extends HookConsumerWidget {
  const MapSearchScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final predictions = useState<List<AutocompletePrediction>?>([]);
    final autoCompleate = ref.watch(autoCompleteSearchNotifierProvider);

    autoCompleate.when(
      data: (data) {
        predictions.value = data;
      },
      loading: () {
        const LoadingWidget();
      },
      error: (error, stackTrace) {
        debugPrint(error.toString());
      },
    );

    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              const SearchHeader(),
              const Gap(8),
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
                          //場所の詳細情報を取得する
                          final placeDetail = await ref
                              .read(placeDetailNotifierProvider.notifier)
                              .searchDetail(
                                placeId: placeId,
                              );
                          //詳細情報を渡す
                          await context.popRoute<Location?>(
                            placeDetail?.result?.geometry?.location,
                          );
                        },
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
