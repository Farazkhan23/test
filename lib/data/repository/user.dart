import 'package:test/data/model/user.dart';
import 'package:test/data/source/remote_source.dart';
import 'package:test/domain/repositories/user.dart';

class UserRepositoryImpl implements UserRepository {
  final RemoteSource remoteSource;

  UserRepositoryImpl({required this.remoteSource});

  @override
  Future<User?> getUser(int userId) async {
    try {
      Future.delayed(const Duration(seconds: 4));
      return remoteSource.getUser(userId);
    } catch (e) {
      return null;
    }
  }
}
