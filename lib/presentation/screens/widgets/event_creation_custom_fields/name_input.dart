import 'package:flutter/material.dart';
class name_Input extends StatelessWidget {
  final Function(String)? onChanged;

  const name_Input({super.key, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      maxLength: 40,
      decoration: InputDecoration(
        
        label: const Text("Nombre del evento"),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: Colors.black),
        ),
      ),
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