import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:manejador_eventos/models/event_model.dart';
import 'package:manejador_eventos/presentation/screens/widgets/viewEvent_widgets/event_card.dart';
//para ver nuestros eventos
class ViewPageScreen extends StatefulWidget {
  const ViewPageScreen({super.key});

  @override
  State createState(){
    return _ViewPageScreen();
  }  
}

class _ViewPageScreen extends State<ViewPageScreen>{

  final List<Event> eventos = [
    Event(
      nameEvent: 'Tortas Omar Fest',
      typeEvent: 'Celebraciones y Fiestas',
      description: 'Ven a reunirte y disfrutar de sabrosa comida!',
      location: 'Tortas Omar 3101 Col Campesina',
      date: DateTime.now().toString().split(' ')[0],
      hourStar: '2:00 pm',
      hourEnd: '8:00 pm',
      capacity: '100',
    ),
    Event(
      nameEvent: 'Cumpleaños Pancho',
      typeEvent: 'Celebraciones y Fiestas',
      description: 'Bienvenida toda la familia Sanchez',
      location: 'Rio Balsas 2043 Col Nvo Mexicali',
      date: DateTime.now().toString().split(' ')[0],
      hourStar: '12:00 pm',
      hourEnd: '10:00 pm',
      capacity: '20',
    ),
  ];



  @override
  void initState(){
  super.initState();


}
  
  @override
  Widget build(BuildContext context) {
  return SafeArea(
    child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
        title: const Text("Ver Eventos"),
        centerTitle: true,
      ),
      body: Center(
        child: ListView.builder(
          itemCount: eventos.length,
          itemBuilder: (context, index) {
            return EventoCard(evento: eventos[index]);
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
            tooltip: "Regresar al Menu",
            elevation: 6,
            backgroundColor: Colors.red,
            foregroundColor: Colors.white,
            onPressed: (){
              context.go('/menu-page');
          },
            child: const Icon(Icons.keyboard_return)
            ),
    ),
    
  );
}
}