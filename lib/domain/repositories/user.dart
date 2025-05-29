import 'package:test/data/model/user.dart';

abstract class UserRepository {
  Future<User?> getUser(int userId);
}
