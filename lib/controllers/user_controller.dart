// controllers/user_controller.dart
import 'package:flutter/material.dart';
import '../models/user.dart';
import '../services/user_service.dart';

class UserController with ChangeNotifier {
  final UserService userService;

  UserController(this.userService);

  List<User> _users = [];

  List<User> get users => _users;

  Future<void> fetchAllUsers() async {
    _users = await userService.getAllUsers();
    notifyListeners();
  }

  Future<void> addUser(User user) async {
    await userService.createUser(user);
    fetchAllUsers();
  }

  Future<void> updateUser(User user) async {
    await userService.updateUser(user);
    fetchAllUsers();
  }

  Future<void> deleteUser(int id) async {
    await userService.deleteUser(id);
    fetchAllUsers();
  }
}
