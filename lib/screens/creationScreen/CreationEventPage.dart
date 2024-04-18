import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:manejador_eventos/screens/widgets/event_creation_form.dart';
class CreationEventPage extends StatefulWidget {
  const CreationEventPage({super.key});
  @override
  State createState(){
  return _CreationEventPage();
  
} 
}
class _CreationEventPage extends State<CreationEventPage> {

  late String title= '';
  // ignore: unused_field
  final _formkey=GlobalKey<FormState>();

  //final String ?typeEvent;
  //final String ?description;
  //final String ?location;
  //final String ?date;
  //final String ?hourStar;
  // final String ?hourEnd;
  @override
  void initState(){
  super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyan,
          title: const Text('Creacion de Evento'),
        ),
        body: const SingleChildScrollView(
          child: Column(children: [  
            EventCreationForm(),
            ]
          ),
        ),
          floatingActionButton: Column(
            mainAxisAlignment: MainAxisAlignment.end, 
            crossAxisAlignment: CrossAxisAlignment.end, 
            children: [
              FloatingActionButton(onPressed :(){
              context.go('/menu-page');
              },
              backgroundColor: Colors.red,
              foregroundColor: Colors.white,
              child: const Icon(Icons.keyboard_return),
              )
            ],
          ),
        ),
      ),
    );
  }
}

