import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.model.freezed.dart';
part 'user.model.g.dart';

@freezed
class User with _$User {
  const factory User({
    required String id,
    String? email,
  }) = _User;

  factory User.fromJson(Map<String, Object?> json) => _$UserFromJson(json);
}
