import 'package:firebase_auth/firebase_auth.dart';

class UserModel {
  final String uid;
  String email;
  String password;

  UserModel({required this.uid, required this.email, required this.password});

  // Getter y Setter para el correo electrónico del usuario
  String get userEmail => email;

  set userEmail(String newEmail) {
    email = newEmail;
  }

  // Getter y Setter para la contraseña del usuario
  String get userPassword => password;

  set userPassword(String newPassword) {
    password = newPassword;
  }
}

// Función de fábrica para crear UserModel a partir de User de Firebase
UserModel userModelFromFirebase(User user) {
  return UserModel(uid: user.uid, email: user.email ?? '', password: '');
}