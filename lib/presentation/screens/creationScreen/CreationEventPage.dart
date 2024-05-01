import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:manejador_eventos/presentation/screens/widgets/event_creation_form.dart';
class CreationEventPage extends StatefulWidget {
  const CreationEventPage({super.key});
  @override
  State createState(){
  return _CreationEventPage();
  
} 
}
class _CreationEventPage extends State<CreationEventPage> {
// ignore: unused_field
  final _formkey=GlobalKey<FormState>();
  late String title= '';
  late String typeEvent='';
  late String description='';
  late String location='';
  late String date='';
  late String hourStar='';
  late String hourEnd='';
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
            EventCreationForm(
              buttonName: 'Dar de alta evento',
            ),
            ],
          
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
  void _CreationValided()
  {

  }
}

