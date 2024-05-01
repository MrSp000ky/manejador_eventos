import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:manejador_eventos/presentation/screens/widgets/event_creation_custom_fields/inputs_creation_event_barrido.dart';
class EventCreationForm extends StatefulWidget {
  final String buttonName;
  const EventCreationForm({super.key,required this.buttonName});
  @override
  State<EventCreationForm> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<EventCreationForm> {
  //final _formKey = GlobalKey<FormState>();
  late String nameEvent= '';
  late String typeEvent='';
  late String description='';
  late String location='';
  late String date='';
  late String hourStar='';
  late String hourEnd='';
  late String capacity='';
  @override
  Widget build(BuildContext context) {
    return  Form(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 10),
                name_Input(
                  onChanged: (value) => nameEvent=value
                ),
                const Padding(padding: EdgeInsets.only(top: 12)),
                Type_Event(),
                const Padding(padding: EdgeInsets.only(top: 12)),
                Description_Input(
                  onChanged: (value) => description=value
                ),
                const Padding(padding: EdgeInsets.only(top: 12)),
                address_input(
                  onChanged: (value) => location=value
                ),
                const Padding(padding: EdgeInsets.only(top: 12)),
                const Date_Input(),
                const Padding(padding: EdgeInsets.only(top: 12)),
                const HourStart_input(  ),          
                const Padding(padding: EdgeInsets.only(top: 12)),
                //hora del final del evento
                const HourEnd_input(),
                const Padding(padding: EdgeInsets.only(top: 12)),
                //afore
                Capacity_input(),
                const Padding(padding: EdgeInsets.only(top: 12)),
                ElevatedButton(
                  onPressed: (){
                    showDialog(
                  context: context, 
                  builder: (context)=> const AlertDialog(
                    title: Text('Creacion de Evento!'),
                    icon: Icon(Icons.password_sharp),
                    content: Text('Su evento se creo exitosamente!'),
                  )
                  );
                  Future.delayed(const Duration(seconds: 4));
                    context.go('/menu-page');
                  }, child: const Text('Crear evento')
                  )
                ],
                ),
          )
          );
  }


}