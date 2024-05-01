import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:manejador_eventos/controller/auth_controller/auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final authProvider = NotifierProvider<AuthNotifier, bool>(AuthNotifier.new);


class AuthNotifier extends Notifier<bool> {
  final AuthService _auth = AuthService();

  @override
  bool build() {
    return false;
  }

  Future<void> login(String email, String password, BuildContext context) async {
    var result = await _auth.signInEmailAndPassword(email, password);
    if (result == true) {
      state = true;
      context.go('/menu-page');
    } else {
      String resultTexto = result.toString();
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Error al Iniciar Sesion'),
          icon: const Icon(Icons.password_sharp),
          content: Text(resultTexto),
        ),
      );
    }
  }

  Future <void> validateRegister(String email , String password, BuildContext context) async {
    var result = await _auth.createAccount(email, password);
    if (result == true) {
      showDialog(
        context: context, 
        builder: (context)=> const AlertDialog(
          title: Text('Su cuenta se creo exitosamente!'),
          icon: Icon(Icons.password_sharp),
          content: Text('Ahora inicie sesion con su cuenta'),
        )
        );
      await Future.delayed(const Duration(seconds: 4));
      context.go('/login-page');
    } 
    else
    {
      showDialog(
        context: context, 
        builder: (context)=> AlertDialog(
          title: const Text('Error al crear cuenta.'),
          icon: const Icon(Icons.password_sharp),
          content: Text(result),
        )
        );
    }
}
}