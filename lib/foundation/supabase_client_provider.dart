import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart' as supabase_flutter;

final supabaseClientProvider = Provider<supabase_flutter.SupabaseClient>((ref) {
  final supabase = supabase_flutter.Supabase.instance.client;
  return supabase;
});

final supabaseAuthProvider = Provider<supabase_flutter.GoTrueClient>((ref) {
  final supabase = ref.watch(supabaseClientProvider);
  return supabase.auth;
});