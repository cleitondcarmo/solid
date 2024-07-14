// repositories/user_repository.dart
import '../models/user.dart';

abstract class IUserRepository {
  Future<List<User>> getAllUsers();
  Future<User> getUserById(int id);
  Future<void> createUser(User user);
  Future<void> updateUser(User user);
  Future<void> deleteUser(int id);
}

class UserRepository implements IUserRepository {
  final List<User> _users = [];

  @override
  Future<List<User>> getAllUsers() async {
    return _users;
  }

  @override
  Future<User> getUserById(int id) async {
    return _users.firstWhere((user) => user.id == id);
  }

  @override
  Future<void> createUser(User user) async {
    _users.add(user);
  }

  @override
  Future<void> updateUser(User user) async {
    var index = _users.indexWhere((u) => u.id == user.id);
    if (index != -1) {
      _users[index] = user;
    }
  }

  @override
  Future<void> deleteUser(int id) async {
    _users.removeWhere((user) => user.id == id);
  }
}
