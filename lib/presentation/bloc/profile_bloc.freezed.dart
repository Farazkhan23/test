// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProfileEvent {

 int get userId;
/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileEventCopyWith<ProfileEvent> get copyWith => _$ProfileEventCopyWithImpl<ProfileEvent>(this as ProfileEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileEvent&&(identical(other.userId, userId) || other.userId == userId));
}


@override
int get hashCode => Object.hash(runtimeType,userId);

@override
String toString() {
  return 'ProfileEvent(userId: $userId)';
}


}

/// @nodoc
abstract mixin class $ProfileEventCopyWith<$Res>  {
  factory $ProfileEventCopyWith(ProfileEvent value, $Res Function(ProfileEvent) _then) = _$ProfileEventCopyWithImpl;
@useResult
$Res call({
 int userId
});




}
/// @nodoc
class _$ProfileEventCopyWithImpl<$Res>
    implements $ProfileEventCopyWith<$Res> {
  _$ProfileEventCopyWithImpl(this._self, this._then);

  final ProfileEvent _self;
  final $Res Function(ProfileEvent) _then;

/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// @nodoc


class LoadProfileEvent implements ProfileEvent {
  const LoadProfileEvent(this.userId);
  

@override final  int userId;

/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadProfileEventCopyWith<LoadProfileEvent> get copyWith => _$LoadProfileEventCopyWithImpl<LoadProfileEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadProfileEvent&&(identical(other.userId, userId) || other.userId == userId));
}


@override
int get hashCode => Object.hash(runtimeType,userId);

@override
String toString() {
  return 'ProfileEvent.loadProfile(userId: $userId)';
}


}

/// @nodoc
abstract mixin class $LoadProfileEventCopyWith<$Res> implements $ProfileEventCopyWith<$Res> {
  factory $LoadProfileEventCopyWith(LoadProfileEvent value, $Res Function(LoadProfileEvent) _then) = _$LoadProfileEventCopyWithImpl;
@override @useResult
$Res call({
 int userId
});




}
/// @nodoc
class _$LoadProfileEventCopyWithImpl<$Res>
    implements $LoadProfileEventCopyWith<$Res> {
  _$LoadProfileEventCopyWithImpl(this._self, this._then);

  final LoadProfileEvent _self;
  final $Res Function(LoadProfileEvent) _then;

/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,}) {
  return _then(LoadProfileEvent(
null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$ProfileState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileState()';
}


}

/// @nodoc
class $ProfileStateCopyWith<$Res>  {
$ProfileStateCopyWith(ProfileState _, $Res Function(ProfileState) __);
}


/// @nodoc


class ProfileInitialState implements ProfileState {
  const ProfileInitialState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileInitialState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileState.initial()';
}


}




/// @nodoc


class ProfileLoadingState implements ProfileState {
  const ProfileLoadingState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileLoadingState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileState.loading()';
}


}




/// @nodoc


class ProfileLoadedState implements ProfileState {
  const ProfileLoadedState({required this.user});
  

 final  User user;

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileLoadedStateCopyWith<ProfileLoadedState> get copyWith => _$ProfileLoadedStateCopyWithImpl<ProfileLoadedState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileLoadedState&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode => Object.hash(runtimeType,user);

@override
String toString() {
  return 'ProfileState.loaded(user: $user)';
}


}

/// @nodoc
abstract mixin class $ProfileLoadedStateCopyWith<$Res> implements $ProfileStateCopyWith<$Res> {
  factory $ProfileLoadedStateCopyWith(ProfileLoadedState value, $Res Function(ProfileLoadedState) _then) = _$ProfileLoadedStateCopyWithImpl;
@useResult
$Res call({
 User user
});


$UserCopyWith<$Res> get user;

}
/// @nodoc
class _$ProfileLoadedStateCopyWithImpl<$Res>
    implements $ProfileLoadedStateCopyWith<$Res> {
  _$ProfileLoadedStateCopyWithImpl(this._self, this._then);

  final ProfileLoadedState _self;
  final $Res Function(ProfileLoadedState) _then;

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? user = null,}) {
  return _then(ProfileLoadedState(
user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User,
  ));
}

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res> get user {
  
  return $UserCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

/// @nodoc


class ProfileErrorState implements ProfileState {
  const ProfileErrorState({required this.message});
  

 final  String message;

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileErrorStateCopyWith<ProfileErrorState> get copyWith => _$ProfileErrorStateCopyWithImpl<ProfileErrorState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileErrorState&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'ProfileState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $ProfileErrorStateCopyWith<$Res> implements $ProfileStateCopyWith<$Res> {
  factory $ProfileErrorStateCopyWith(ProfileErrorState value, $Res Function(ProfileErrorState) _then) = _$ProfileErrorStateCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$ProfileErrorStateCopyWithImpl<$Res>
    implements $ProfileErrorStateCopyWith<$Res> {
  _$ProfileErrorStateCopyWithImpl(this._self, this._then);

  final ProfileErrorState _self;
  final $Res Function(ProfileErrorState) _then;

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(ProfileErrorState(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
