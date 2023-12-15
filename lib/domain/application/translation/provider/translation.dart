import 'package:food_quest/foundation/google_translator_client.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class Translate {
  static Future<String> translate({
    required String content,
    required String fromCountry,
    required String toCountry,
    required WidgetRef ref,
  }) async {
    final translator = ref.read(googleTranslator);
    final result = await translator.translate(
      content,
      from: fromCountry,
      to: toCountry,
    );
    return result.text;
  }
}
