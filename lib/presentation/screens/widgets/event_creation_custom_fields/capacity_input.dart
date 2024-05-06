import 'package:flutter/material.dart';

class Capacity_input extends StatefulWidget {
  
  final Function(int) onChanged;
  const Capacity_input({super.key, required this.onChanged});

  @override
  _Capacity_inputState createState() => _Capacity_inputState();
}

class _Capacity_inputState extends State<Capacity_input> {
  int count = 1;

  void _increment() {
    setState(() {
      count++;
    });
    widget.onChanged(count);
  }

  void _decrement() {
    setState(() {
      if (count > 1) {
        count--;
      }
    });
    widget.onChanged(count);

  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Text('Aforo'),
        IconButton(
          icon:const Icon(Icons.remove),
          onPressed: _decrement,
        ),
        Text(
          '$count',
          style: const TextStyle(fontSize: 20),
        ),
        IconButton(
          icon: const Icon(Icons.add),
          onPressed: _increment,
        ),
      ],
    );
  }
}