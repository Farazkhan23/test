import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
sealed class User with _$User {
  const factory User({
    required int id,
    required String name,
    @Default([]) List<String> qualities,
    required String gender,
    required String pronouns,
    required String about,
    required String location,
    required List<String> photos,
    required int age,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
