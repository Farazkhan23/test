part of 'profile_bloc.dart';

@freezed
sealed class ProfileState with _$ProfileState {
  const factory ProfileState.initial() = ProfileInitialState;
  const factory ProfileState.loading() = ProfileLoadingState;
  const factory ProfileState.loaded({required User user}) = ProfileLoadedState;
  const factory ProfileState.error({required String message}) =
      ProfileErrorState;
}
