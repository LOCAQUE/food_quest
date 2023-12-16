import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:translator/translator.dart';

final googleTranslator = Provider<GoogleTranslator>((ref) {
  return GoogleTranslator();
});