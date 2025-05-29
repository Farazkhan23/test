import 'package:test/data/model/user.dart';
import 'package:test/domain/repositories/user.dart';

class GetProfile {
  final UserRepository userRepository;
  GetProfile({required this.userRepository});

  Future<User?> call(int userId) async {
    return userRepository.getUser(userId);
  }
}
