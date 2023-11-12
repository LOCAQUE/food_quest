import 'package:shared_preferences/shared_preferences.dart';
import 'package:food_quest/domain/repositories/shared_preferences_repository.dart';

//sharedPreferencesの実際の処理を書く
class SharedPreferencesRepositoryImpl implements SharedPreferencesRepository {
  SharedPreferencesRepositoryImpl(this.client);

  final SharedPreferences client;

  @override
  Future<void> setSelectedPrefecture({
    required List<String> prefectures,
    required String key,
  }) async {
    await client.setStringList(key, prefectures);
  }
  
  @override
  Future<List<String>?> getSelectedPrefecture({
    required String key,
  }) async {
    final selectedPrefectureList = client.getStringList(key) ?? [];
    return selectedPrefectureList;
  }
}
