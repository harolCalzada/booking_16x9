import 'package:firebase_auth/firebase_auth.dart';
import 'package:salon_app/models/user_entity.dart';
import 'package:salon_app/repositories/user_repository.dart';

class RegisterUserService {
  Future<bool> registerUser(UserEntity user) async {
    bool success = await UserRepository().createUser(user.email, user.password);
    if (success) {}
    return success;
  }
}
