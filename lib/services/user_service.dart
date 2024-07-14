// services/user_service.dart
import '../models/user.dart';
import '../repositories/user_repository.dart';

class UserService {
  final IUserRepository userRepository;

  UserService(this.userRepository);

  Future<List<User>> getAllUsers() {
    return userRepository.getAllUsers();
  }

  Future<User> getUserById(int id) {
    return userRepository.getUserById(id);
  }

  Future<void> createUser(User user) {
    return userRepository.createUser(user);
  }

  Future<void> updateUser(User user) {
    return userRepository.updateUser(user);
  }

  Future<void> deleteUser(int id) {
    return userRepository.deleteUser(id);
  }
}
