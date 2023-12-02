import 'package:geolocator/geolocator.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'geolocator_notifier.g.dart';

// パーミッションを表示し、現在の位置情報を取得する
@riverpod
class GeolocatorNotifier extends _$GeolocatorNotifier {
  @override
  Future<Position> build() async {
    final serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('位置情報の取得ができません。設定から位置情報の許可をしてください。');
    }

    final permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      final permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('位置情報の取得ができません。設定から位置情報の許可をしてください。');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error('位置情報の取得ができません。設定から位置情報の許可をしてください。');
    }

    return Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high,
    );
  }
}
