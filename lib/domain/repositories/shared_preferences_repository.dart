import 'package:food_quest/foundation/shared_preferences_client_provider.dart';
import 'package:food_quest/infrastructure/local/shared_preferences_repository_impl.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final sharedPreferencesRepositoryProvider =
    Provider<SharedPreferencesRepository>((ref) {
  //clientをDIする
  final provider = ref.watch(sharedPreferencesClientProvider);

  final client = provider.value;
  if( client == null ) {
    throw Exception('sharedPreferencesClientProvider is null');
  }
  return SharedPreferencesRepositoryImpl(client);
});

abstract class SharedPreferencesRepository {
  //選択した都道府県を保存する
  Future<void> setSelectedPrefecture({
    required List<String> prefectures,
    required String key,
  });

  //選択した都道府県を取得する
  Future<List<String>?> getSelectedPrefecture({
    required String key,
  });
}
