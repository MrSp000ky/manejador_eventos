import 'package:flutter/material.dart';

class Description_Input extends StatelessWidget{
final Function(String)? onChanged;

    const Description_Input({super.key,this.onChanged});
  @override
  Widget build(BuildContext context) {
  return TextFormField(
      onChanged: onChanged,
      maxLength: 50,
      decoration: InputDecoration(
        label: const Text("descripcion"),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: Colors.black),
        ),
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return "Es obligatorio llenar el campo";
        }
        if(value.length > 30){
          return "La descripcion no puede tener mas de 30 caracteres";
        }
        return null;
      },
      onSaved: (value) {
        
      },
    );
  }
}