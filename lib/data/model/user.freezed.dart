// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$User {

 int get id; String get name; List<String> get qualities; String get gender; String get pronouns; String get about; String get location; List<String> get photos; int get age;
/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserCopyWith<User> get copyWith => _$UserCopyWithImpl<User>(this as User, _$identity);

  /// Serializes this User to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is User&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other.qualities, qualities)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.pronouns, pronouns) || other.pronouns == pronouns)&&(identical(other.about, about) || other.about == about)&&(identical(other.location, location) || other.location == location)&&const DeepCollectionEquality().equals(other.photos, photos)&&(identical(other.age, age) || other.age == age));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,const DeepCollectionEquality().hash(qualities),gender,pronouns,about,location,const DeepCollectionEquality().hash(photos),age);

@override
String toString() {
  return 'User(id: $id, name: $name, qualities: $qualities, gender: $gender, pronouns: $pronouns, about: $about, location: $location, photos: $photos, age: $age)';
}


}

/// @nodoc
abstract mixin class $UserCopyWith<$Res>  {
  factory $UserCopyWith(User value, $Res Function(User) _then) = _$UserCopyWithImpl;
@useResult
$Res call({
 int id, String name, List<String> qualities, String gender, String pronouns, String about, String location, List<String> photos, int age
});




}
/// @nodoc
class _$UserCopyWithImpl<$Res>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._self, this._then);

  final User _self;
  final $Res Function(User) _then;

/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? qualities = null,Object? gender = null,Object? pronouns = null,Object? about = null,Object? location = null,Object? photos = null,Object? age = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,qualities: null == qualities ? _self.qualities : qualities // ignore: cast_nullable_to_non_nullable
as List<String>,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,pronouns: null == pronouns ? _self.pronouns : pronouns // ignore: cast_nullable_to_non_nullable
as String,about: null == about ? _self.about : about // ignore: cast_nullable_to_non_nullable
as String,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,photos: null == photos ? _self.photos : photos // ignore: cast_nullable_to_non_nullable
as List<String>,age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _User implements User {
  const _User({required this.id, required this.name, final  List<String> qualities = const [], required this.gender, required this.pronouns, required this.about, required this.location, required final  List<String> photos, required this.age}): _qualities = qualities,_photos = photos;
  factory _User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

@override final  int id;
@override final  String name;
 final  List<String> _qualities;
@override@JsonKey() List<String> get qualities {
  if (_qualities is EqualUnmodifiableListView) return _qualities;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_qualities);
}

@override final  String gender;
@override final  String pronouns;
@override final  String about;
@override final  String location;
 final  List<String> _photos;
@override List<String> get photos {
  if (_photos is EqualUnmodifiableListView) return _photos;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_photos);
}

@override final  int age;

/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserCopyWith<_User> get copyWith => __$UserCopyWithImpl<_User>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _User&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other._qualities, _qualities)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.pronouns, pronouns) || other.pronouns == pronouns)&&(identical(other.about, about) || other.about == about)&&(identical(other.location, location) || other.location == location)&&const DeepCollectionEquality().equals(other._photos, _photos)&&(identical(other.age, age) || other.age == age));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,const DeepCollectionEquality().hash(_qualities),gender,pronouns,about,location,const DeepCollectionEquality().hash(_photos),age);

@override
String toString() {
  return 'User(id: $id, name: $name, qualities: $qualities, gender: $gender, pronouns: $pronouns, about: $about, location: $location, photos: $photos, age: $age)';
}


}

/// @nodoc
abstract mixin class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) _then) = __$UserCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, List<String> qualities, String gender, String pronouns, String about, String location, List<String> photos, int age
});




}
/// @nodoc
class __$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(this._self, this._then);

  final _User _self;
  final $Res Function(_User) _then;

/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? qualities = null,Object? gender = null,Object? pronouns = null,Object? about = null,Object? location = null,Object? photos = null,Object? age = null,}) {
  return _then(_User(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,qualities: null == qualities ? _self._qualities : qualities // ignore: cast_nullable_to_non_nullable
as List<String>,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,pronouns: null == pronouns ? _self.pronouns : pronouns // ignore: cast_nullable_to_non_nullable
as String,about: null == about ? _self.about : about // ignore: cast_nullable_to_non_nullable
as String,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,photos: null == photos ? _self._photos : photos // ignore: cast_nullable_to_non_nullable
as List<String>,age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
