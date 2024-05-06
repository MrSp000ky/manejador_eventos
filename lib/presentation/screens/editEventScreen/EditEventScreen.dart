import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:manejador_eventos/presentation/providers/event_provider.dart';
import 'package:manejador_eventos/models/event_model.dart';

class EditEventScreen extends ConsumerStatefulWidget {
  final Event event;
  const EditEventScreen({super.key , required this.event});


  @override
  _EditEventScreenState createState() => _EditEventScreenState();
}

class _EditEventScreenState extends ConsumerState<EditEventScreen> {
  late Event _event;


  late String eventName = '';
  late String eventType = '';
  late String eventDescription = '';
  late String eventLocation = '';
  late String eventDate = '';
  late String eventHourStar = '';
  late String eventHourEnd = '';
  late String eventCapacity = '';

  @override
  void initState() {
    super.initState();
    _event = widget.event;
  }
  final _formKey = GlobalKey<FormState>();
  
@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Editar Evento'),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                TextFormField(
                  initialValue: _event.nameEvent,
                  onChanged: (value) => eventName = value,
                  decoration: const InputDecoration(labelText: 'Nombre del evento'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor ingrese un nombre para el evento';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  initialValue: _event.typeEvent,
                  onChanged: (value) => eventType = value,
                  decoration: const InputDecoration(labelText: 'Tipo de evento'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor ingrese un tipo de evento';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  initialValue: _event.description,
                  onChanged: (value) => eventDescription = value,
                  decoration: const InputDecoration(labelText: 'Descripción del evento'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor ingrese una descripción para el evento';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  initialValue: _event.location,
                  onChanged: (value) => eventLocation = value,
                  decoration: const InputDecoration(labelText: 'Ubicación del evento'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor ingrese una ubicación para el evento';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  initialValue: _event.date,
                  onChanged: (value) => eventDate = value,
                  decoration: const InputDecoration(labelText: 'Fecha del evento'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor ingrese una fecha para el evento';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  initialValue: _event.hourStar,
                  onChanged: (value) => eventHourStar = value,
                  decoration: const InputDecoration(labelText: 'Hora de inicio del evento'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor ingrese una hora de inicio para el evento';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  initialValue: _event.hourEnd,
                  onChanged: (value) => eventHourEnd = value,
                  decoration: const InputDecoration(labelText: 'Hora de fin del evento'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor ingrese una hora de fin para el evento';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  initialValue: _event.capacity,
                  onChanged: (value) => eventCapacity = value,
                  decoration: const InputDecoration(labelText: 'Capacidad del evento'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor ingrese una capacidad para el evento';
                    }
                    return null;
                  },
                ),
                ElevatedButton(
                  onPressed: () {
                  if (_formKey.currentState?.validate()?? false) {
                    final updatedEvent = Event(
                      id: _event.id,
                      nameEvent: eventName.isEmpty? _event.nameEvent : eventName,
                      typeEvent: eventType.isEmpty? _event.typeEvent : eventType,
                      description: eventDescription.isEmpty? _event.description : eventDescription,
                      location: eventLocation.isEmpty? _event.location : eventLocation,
                      date: eventDate.isEmpty? _event.date : eventDate,
                      hourStar: eventHourStar.isEmpty? _event.hourStar : eventHourStar,
                      hourEnd: eventHourEnd.isEmpty? _event.hourEnd : eventHourEnd,
                      capacity: eventCapacity.isEmpty? _event.capacity : eventCapacity,
                      owner: _event.owner,
                    );
                      
                      ref.read(eventProvider.notifier).updateEvent(updatedEvent);
                      
                      context.go('/view-event');
                    }
                  },
                  child: const Text('Guardar cambios'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}