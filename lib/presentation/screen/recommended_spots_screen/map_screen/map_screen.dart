// ignore_for_file: cascade_invocations

import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:food_quest/domain/application/google_map/geolocator/notifier/geolocator_notifier.dart';
import 'package:food_quest/presentation/component/loading_widget.dart';
import 'package:food_quest/presentation/component/searc_header.dart';
import 'package:food_quest/routes/app_router.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_place/google_place.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class MapAutoRouterScreen extends AutoRouter {
  const MapAutoRouterScreen({super.key});
}

@RoutePage()
class MapScreen extends StatefulHookConsumerWidget {
  const MapScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MapScreenState();
}

class _MapScreenState extends ConsumerState<MapScreen> {
  final mapController = Completer<GoogleMapController>();

  @override
  void dispose() {
    mapController.future.then((value) => value.dispose);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const center = LatLng(35.6814999, 139.7654987);
    final detailLocation = useState<Location?>(null);
    //パーミッションを表示し、現在の位置情報を取得する
    final geolocatorNotifier = ref.watch(geolocatorNotifierProvider);
    final detailCameraPosition = detailLocation.value != null
        ? CameraPosition(
            target: LatLng(
              detailLocation.value!.lat!,
              detailLocation.value!.lng!,
            ),
            zoom: 16,
          )
        : null;

    geolocatorNotifier.when(
      data: (currentLocation) {
        //詳細場所がある場合はそこを表示し、ない場合は現在地を表示する
        final cameraPosition = CameraPosition(
          target: LatLng(currentLocation.latitude, currentLocation.longitude),
          zoom: 16,
        );
        mapController.future.then(
          (value) => value.animateCamera(
            CameraUpdate.newCameraPosition(
              detailCameraPosition ?? cameraPosition,
            ),
          ),
        );
      },
      loading: () {
        const LoadingWidget();
      },
      error: (error, stackTrace) {
        debugPrint(error.toString());
      },
    );

    return Scaffold(
      body: Stack(
        children: [
          GoogleMap(
            onMapCreated: mapController.complete,
            myLocationEnabled: true,
            initialCameraPosition: const CameraPosition(
              target: center,
              zoom: 16,
            ),
          ),
          Positioned(
            top: 48,
            child: SearchHeader(
              onTap: () async {
                final location =
                    await context.pushRoute<Location?>(const MapSearchRoute());
                detailLocation.value = location;
              },
            ),
          ),
        ],
      ),
    );
  }
}
