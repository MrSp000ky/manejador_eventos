import 'package:flutter/material.dart';

class PasswordInput extends StatelessWidget {
  final Function(String)? onChanged;

  const PasswordInput({super.key, this.onChanged});

  @override
  Widget build(BuildContext context) {
     return TextFormField(
      onChanged: onChanged,
      decoration: InputDecoration(
        label: const Text("Contraseña"),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: Colors.black),
        ),
      ),
      obscureText: true,
      validator: (value) {
        if (value!.isEmpty) {
          return "Es obligatorio llenar el campo";
        }
        return null;
      },
      onSaved: (value) {
      },
    );
  }
}