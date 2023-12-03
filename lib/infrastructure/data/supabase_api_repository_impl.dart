// ignore_for_file: lines_longer_than_80_chars

import 'dart:io';

import 'package:food_quest/domain/entity/monster.dart';
import 'package:food_quest/domain/entity/quest_image.dart';
import 'package:food_quest/domain/entity/receive_id.dart';
import 'package:image_picker/image_picker.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:uuid/uuid.dart';

import 'package:food_quest/domain/entity/answer.dart';
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
          .select<PostgrestList>('*, users(*), quest_images(*)')
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
          .select<PostgrestList>('*, users(*), quest_images(*)')
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
  Future<int> createQuest({
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
      //クエストを作成し、idを取得する
      final response = await supabaseClient
          .from('quests')
          .insert(sendQuestData)
          .select<PostgrestList>('id');

      final questId = response.map(ReceiveId.fromJson).toList().first.id;
      return questId;
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
        //UUIDを生成する
        final uid = const Uuid().v4();

        //storageに画像をアップロードする
        await supabaseClient.storage
            .from('locaque')
            .upload('$currentId/$uid', File(image.path));
        //storageのURLを取得する
        final imageUrl = supabaseClient.storage
            .from('locaque')
            .getPublicUrl('$currentId/$uid');

        imagePaths.add(imageUrl);
      }

      return imagePaths;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> createQuestImage({
    required int questId,
    required List<String> imageUrls,
  }) async {
    try {
      if (imageUrls.isEmpty) return;

      for (final url in imageUrls) {
        final sendQuestImageData = QuestImage(
          questId: questId,
          imageUrl: url,
        );

        await supabaseClient.from('quest_images').insert(sendQuestImageData);
      }
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<Answer>?> getAnswerList({required int questId}) async {
    try {
      final response = await supabaseClient
          .from('answers')
          .select<PostgrestList>()
          .eq('questId', questId);

      final answerList = response.map(Answer.fromJson).toList();
      return answerList;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> crateMonster({
    required int baseMonster,
    required int experience,
    required String monName,
  }) async {
    final currentId = supabaseClient.auth.currentUser?.id;

    final sendMonsterData = Monster(
      baseMonster: baseMonster,
      experience: experience,
      monName: monName,
      userId: currentId!,
    );

    try {
      await supabaseClient.from('monsters').insert(sendMonsterData);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<Monster?> getMonster() async {
    final currentId = supabaseClient.auth.currentUser?.id;

    try {
      final response = await supabaseClient
          .from('monsters')
          .select<PostgrestList>()
          .eq('userId', currentId);

      final monster = response.map(Monster.fromJson).toList().first;
      return monster;
    } catch (e) {
      rethrow;
    }
  }
}
