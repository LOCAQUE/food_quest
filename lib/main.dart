import 'package:flutter/material.dart';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:food_quest/app.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';


void main() async {
  await mainInitialize();
  runApp(const ProviderScope(child: App()));
}

Future<void> mainInitialize() async {
  WidgetsFlutterBinding.ensureInitialized();
  // .envを読み込めるように設定.
  await dotenv.load();
  await Supabase.initialize(
    url: dotenv.get('VAR_URL'), // .envのURLを取得.
    anonKey: dotenv.get('VAR_ANONKEY'), // .envのanonキーを取得.
  );
}