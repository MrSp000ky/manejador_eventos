import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:manejador_eventos/controller/auth_controller/auth.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';


part 'auth_provider.g.dart';

final AuthService _auth = AuthService();
@riverpod
void validateLogin(ValidateLoginRef ref,String email, String password, BuildContext context) async {
    var result = await _auth.signInEmailAndPassword(email, password);

    if (result == true) {
      context.go('/menu-page');
    }else 
    {
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