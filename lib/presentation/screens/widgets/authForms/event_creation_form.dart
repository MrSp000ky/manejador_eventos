import 'package:flutter/material.dart';
import 'package:manejador_eventos/presentation/screens/widgets/event_creation_custom_fields/creation_form_textfield.dart';

class EventCreationForm extends StatefulWidget {
  const EventCreationForm({super.key});

  @override
  State<EventCreationForm> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<EventCreationForm> {
  @override
  Widget build(BuildContext context) {
    return const Form(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 10),
                CreationFormField(
                  labelText: "Nombre"
                  ),
                Padding(padding: EdgeInsets.only(top: 12)),
                CreationFormField(
                  labelText: "Tipo de evento"
                  ),
                Padding(padding: EdgeInsets.only(top: 12)),
                CreationFormField(
                  labelText: "Descripcion"
                  ),
                Padding(padding: EdgeInsets.only(top: 12)),
                CreationFormField(
                  labelText: "Ubicacion"
                  ),
                Padding(padding: EdgeInsets.only(top: 12)),
                CreationFormField(
                  labelText: "Fecha del Evento"
                  ),
                Padding(padding: EdgeInsets.only(top: 12)),
                CreationFormField(
                  labelText: "Hora de Inicio"
                  ),
                Padding(padding: EdgeInsets.only(top: 12)),
                CreationFormField(
                  labelText: "Hora de Cierre"
                  ),
                Padding(padding: EdgeInsets.only(top: 12)),
                CreationFormField(labelText: "Aforo"),
                Padding(padding: EdgeInsets.only(top: 12)),
                ],
                ),
          )
          );
  }
}