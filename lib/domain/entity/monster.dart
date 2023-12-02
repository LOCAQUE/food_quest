import 'package:freezed_annotation/freezed_annotation.dart';

part 'monster.freezed.dart';
part 'monster.g.dart';

@freezed
abstract class Monster with _$Monster {
  const factory Monster({
    required int baseMonster,
    required int experience,
    required String monName,
    required String userId,
  }) = _Monster;
  factory Monster.fromJson(Map<String, dynamic> json) =>
      _$MonsterFromJson(json);
}

@freezed
abstract class ResponceMonster with _$ResponceMonster {
  const factory ResponceMonster({
    required int baseResponceMonster,
    required int experience,
    required String monName,
    required String userId,
    int? id,
    DateTime? createdAt,
  }) = _ResponceMonster;
  factory ResponceMonster.fromJson(Map<String, dynamic> json) =>
      _$ResponceMonsterFromJson(json);
}
