import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:test/data/model/user.dart';

class RemoteSource {
  Future<User> getUser(int userId) async {
    try {
      final mockUsers = await rootBundle.loadString('assets/data/mock.json');
      final mockUsersJson = jsonDecode(mockUsers);
      return User.fromJson(
        mockUsersJson['users'].firstWhere((user) => user['id'] == userId),
      );
    } catch (e) {
      throw Exception('Failed to load user');
    }
  }
}
