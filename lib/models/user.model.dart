import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.model.freezed.dart';
part 'user.model.g.dart';

@freezed
abstract class User with _$User {
  const factory User({
    required String id,
    required String displayName,
    @JsonKey(includeToJson: false) @Default(false) bool isVip,
    @JsonKey(includeToJson: false, includeFromJson: false)
    @Default(false)
    bool isAnonymous,
  }) = _User;

  factory User.fromJson(Map<String, Object?> json) => _$UserFromJson(json);

  @override
  Map<String, dynamic> toJson() => toJson();
}
