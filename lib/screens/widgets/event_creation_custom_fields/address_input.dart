import 'package:flutter/material.dart';
class address_input extends StatelessWidget{
  final Function(String)? onChanged;
  static final RegExp _addressRegExp =
      RegExp(r'^[A-z]+\s\d+\s[A-z]+'); 
  const address_input({super.key,this.onChanged});
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      decoration: InputDecoration(
        label:  const Text("direccion"),
        hintText: 'calle numero fraccionamiento',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: Colors.black),
        ),
      ),
      validator: (value){
        if (value!.isEmpty) {
          return "Es obligatorio llenar el campo";
        }
        //se valida con expresion regular 
        if (!_addressRegExp.hasMatch(value)) {
          return "Dirección no válida";
        }
        return null;
      },
      onSaved: (value) {
        
      },

    );


}
}
