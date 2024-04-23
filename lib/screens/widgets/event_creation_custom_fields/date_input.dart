import 'package:flutter/material.dart';

class Date_Input extends StatefulWidget {
  const Date_Input({Key? key}) : super(key: key);

  @override
  State<Date_Input> createState() => _Date_InputState();
}

class _Date_InputState extends State<Date_Input> {
  DateTime? _selectedDate;

  @override
  Widget build(BuildContext context) {
    
    return TextFormField(
      decoration: InputDecoration(
        labelText: "Fecha",
        filled: true,
        prefixIcon: Icon(Icons.calendar_today),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: Colors.black),
        ),
      ),
      readOnly: true,
      onTap: () => _selectDate(context),
      controller: TextEditingController(
        text: _selectedDate != null ? _selectedDate!.toString().split(' ')[0] : ''
       ) // Llamar _selectDate al tocar el campo
    );
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (picked != null) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }
}