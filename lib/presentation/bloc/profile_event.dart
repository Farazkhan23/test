part of 'profile_bloc.dart';

@freezed
sealed class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.loadProfile(int userId) = LoadProfileEvent;
}
