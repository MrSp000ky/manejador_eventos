import 'package:flutter/material.dart';
class HourStart_input extends StatefulWidget{
  
  final ValueChanged<TimeOfDay> onChanged;
  const HourStart_input({super.key, required this.onChanged});

@override
_HourStartState createState(){
  return _HourStartState();
}
}
class _HourStartState extends State<HourStart_input>{
  TimeOfDay selectedTime=TimeOfDay.now();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text("${selectedTime.hour}:${selectedTime.minute}"),
          ElevatedButton(
            child: const Text('Elige la hora de inicio'),
            onPressed: () async{
              final TimeOfDay? timeOfDay = await showTimePicker(
                context: context, 
                initialTime: selectedTime,
                initialEntryMode: TimePickerEntryMode.dial,
                );
                if(timeOfDay != null)
                {
                  setState(() {
                    selectedTime= timeOfDay;
                  });
                  widget.onChanged(timeOfDay); 
                }
            },),
        ],
      ),
    );
  }
}
