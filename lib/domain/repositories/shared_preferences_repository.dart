import 'package:food_quest/foundation/shared_preferences_client_provider.dart';
import 'package:food_quest/infrastructure/local/shared_preferences_repository_impl.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final sharedPreferencesRepositoryProvider =
    Provider<SharedPreferencesRepository>((ref) {
  //clientをDIする
  final provider = ref.watch(sharedPreferencesClientProvider);

  final client = provider.value;
  return SharedPreferencesRepositoryImpl(client!);
});

abstract class SharedPreferencesRepository {
  
}
