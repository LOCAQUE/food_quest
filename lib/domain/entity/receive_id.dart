import 'package:freezed_annotation/freezed_annotation.dart';

part 'receive_id.freezed.dart';
part 'receive_id.g.dart';

@freezed
abstract class ReceiveId with _$ReceiveId {
  const factory ReceiveId({
    required int id,
  }) = _ReceiveId;

  const ReceiveId._();

  factory ReceiveId.fromJson(Map<String, dynamic> json) =>
      _$ReceiveIdFromJson(json);
}
