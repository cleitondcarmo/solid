// main.dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'controllers/user_controller.dart';
import 'repositories/user_repository.dart';
import 'services/user_service.dart';
import 'views/user_list.dart';

void main() {
  final userRepository = UserRepository();
  final userService = UserService(userRepository);

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UserController(userService)),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: UserList(),
    );
  }
}
