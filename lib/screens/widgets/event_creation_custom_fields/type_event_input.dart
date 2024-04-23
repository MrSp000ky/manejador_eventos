
import 'package:flutter/material.dart';

class Type_Event extends StatefulWidget {
  final List<String> types;
  final String? selectedType;
  final Function(String?)? onChanged;

  Type_Event({required this.onChanged,required this.selectedType , required this.types
  
  });

  @override
  _Type_EventState createState() => _Type_EventState();
}
class _Type_EventState extends State<Type_Event> {
  // ignore: unused_field
  late String _selectedType;
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: widget.selectedType,
      onChanged: (String? newValue) {
        setState(() {
          _selectedType = newValue!;
          widget.onChanged!(newValue);
        });
      },
      items: widget.types.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}