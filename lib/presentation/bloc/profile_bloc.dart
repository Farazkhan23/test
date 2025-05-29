import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test/data/model/user.dart';
import 'package:test/domain/use-case/getProfile.dart';

part 'profile_event.dart';
part 'profile_state.dart';
part 'profile_bloc.freezed.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final GetProfile getProfile;
  ProfileBloc({required this.getProfile}) : super(ProfileState.initial()) {
    on<LoadProfileEvent>((event, emit) async {
      emit(ProfileState.loading());
      await Future.delayed(Duration(seconds: 5));
      final user = await getProfile(event.userId);
      if (user != null) {
        emit(ProfileState.loaded(user: user));
      } else {
        emit(ProfileState.error(message: 'User not found'));
      }
    });
  }
}
