// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_User _$UserFromJson(Map<String, dynamic> json) => _User(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  qualities:
      (json['qualities'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  gender: json['gender'] as String,
  pronouns: json['pronouns'] as String,
  about: json['about'] as String,
  location: json['location'] as String,
  photos: (json['photos'] as List<dynamic>).map((e) => e as String).toList(),
  age: (json['age'] as num).toInt(),
);

Map<String, dynamic> _$UserToJson(_User instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'qualities': instance.qualities,
  'gender': instance.gender,
  'pronouns': instance.pronouns,
  'about': instance.about,
  'location': instance.location,
  'photos': instance.photos,
  'age': instance.age,
};
