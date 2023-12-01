import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:google_place/google_place.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final googlePlaceClient = Provider<GooglePlace>((ref) {
  final googlePlace = GooglePlace(dotenv.get('VAR_GOOGLEKEY'));
  return googlePlace;
});
