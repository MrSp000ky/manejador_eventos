import 'package:flutter/material.dart';
import 'package:manejador_eventos/screens/widgets/login_register_custom_fields/email_input.dart';
import 'package:manejador_eventos/screens/widgets/login_register_custom_fields/password_input.dart';


class LoginRegisterForm extends StatefulWidget {
  final void Function(String, String) onLogin;
  final String buttonName;

  const LoginRegisterForm({super.key, required this.onLogin, required this.buttonName});

  @override
  State<LoginRegisterForm> createState() => _LoginFormState();
}


class _LoginFormState extends State<LoginRegisterForm> {
  final _formKey = GlobalKey<FormState>();
  late String email = '';
  late String password = '';

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          const Text('Correo'),
          Email_Input(
            onChanged: (value) => email = value,
          ),
          const Padding(padding: EdgeInsets.only(top: 12)),
          const Text('Contraseña'),
          PasswordInput(
            onChanged: (value) => password = value,
          ),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                widget.onLogin(email, password);
              }
            },
            child: Text(widget.buttonName),
          ),
        ],
      ),
    );
  }
}