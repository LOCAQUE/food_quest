// ignore_for_file: lines_longer_than_80_chars

import 'dart:io';

import 'package:food_quest/domain/entity/answer.dart';
import 'package:image_picker/image_picker.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'package:food_quest/domain/entity/question.dart';
import 'package:food_quest/domain/repositories/api_repository.dart';

//supabaseのAPIの実際の処理を書く
class SupabaseApiRepositoryImpl implements ApiRepository {
  SupabaseApiRepositoryImpl(this.supabaseClient);

  final SupabaseClient supabaseClient;

  @override
  Future<List<QuestionResponse>?> getMyQuestList() async {
    final currentId = supabaseClient.auth.currentUser?.id;

    try {
      final response = await supabaseClient
          .from('quests')
          .select<PostgrestList>('*, users(*)')
          .eq('userId', currentId);

      final myQuestList = response.map(QuestionResponse.fromJson).toList();
      return myQuestList;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<QuestionResponse>?> getQuestList({
    required List<String>? selectedPrefectures,
  }) async {
    final currentId = supabaseClient.auth.currentUser?.id;

    try {
      final response = await supabaseClient
          .from('quests')
          .select<PostgrestList>('*, users(*), answers(*)')
          .in_('prefecture', selectedPrefectures!)
          .neq('userId', currentId);

      final questList = response.map(QuestionResponse.fromJson).toList();
      return questList;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> createAnswer({
    required int questId,
    required String answerContent,
    required String minimumBudget,
    required String maximumBudget,
  }) async {
    final currentId = supabaseClient.auth.currentUser?.id;

    final sendAnswerData = SendAnswer(
      content: answerContent,
      questId: questId,
      uid: currentId!,
      bestAnswer: false,
      minimumBudget: int.parse(minimumBudget),
      maximumBudget: int.parse(maximumBudget),
    );

    try {
      await supabaseClient.from('answers').insert(sendAnswerData);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> createQuest({
    required String content,
    required String deadLine,
    required String prefecture,
    required String minimumBudget,
    required String maximumBudget,
  }) async {
    final currentId = supabaseClient.auth.currentUser?.id;

    final sendQuestData = Question(
      contents: content,
      deadLine: DateTime.parse(deadLine),
      prefecture: prefecture,
      userId: currentId!,
      minimumBudget: int.parse(minimumBudget),
      maximumBudget: int.parse(maximumBudget),
    );

    try {
      await supabaseClient.from('quests').insert(sendQuestData);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<String>> uploadImage({
    required List<XFile> selectedImage,
  }) async {
    try {
      final currentId = supabaseClient.auth.currentUser?.id;

      final imagePaths = <String>[];

      for (final image in selectedImage) {
        //storageに画像をアップロードする
        final path = File(image.path);
        await supabaseClient.storage
            .from('locaque')
            .upload('$currentId/${image.name}', path);
        //storageのURLを取得する
        final imageUrl = supabaseClient.storage
            .from('locaque')
            .getPublicUrl('$currentId/${image.name}');

        imagePaths.add(imageUrl);
      }

      return imagePaths;
    } catch (e) {
      rethrow;
    }
  }
}
