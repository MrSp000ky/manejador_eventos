
import 'package:flutter/material.dart';

class Type_Event extends StatefulWidget {

  Type_Event({super.key
  });

  @override
  _Type_EventState createState() => _Type_EventState();
}
class _Type_EventState extends State<Type_Event> {
  // ignore: unused_field
  String _selectedOption = 'Tipo de Evento 1';
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      decoration: InputDecoration(
        labelText: 'Tipo De Evento',
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: Colors.black),
        ),
      ),
      value: _selectedOption, // Valor seleccionado
      onChanged: (String? newValue) {
        setState(() {
          _selectedOption = newValue!; // Actualizar el valor seleccionado
        });
      },
      items: <String>['Tipo de Evento 1', 'Tipo de Evento 2', 'Tipo de Evento 3', 'Tipo de Evento 4']
          .map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value), // Texto de la opción
        );
      }).toList(),
    );
  }
}