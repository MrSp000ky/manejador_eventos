import 'package:flutter/material.dart';
import 'package:manejador_eventos/models/event_model.dart';

class EventoCard extends StatelessWidget {
  final Event evento;

  const EventoCard({super.key, required this.evento});

   @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(255, 190, 255, 255),
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      elevation: 4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          AspectRatio(
            aspectRatio: 16 / 9, // Proporción de la imagen
            child: Image.network(
              'https://steamuserimages-a.akamaihd.net/ugc/775113739117651791/2B682EEFB34BB94226EBAF806439D2955D30BE9C/?imw=512&&ima=fit&impolicy=Letterbox&imcolor=%23000000&letterbox=false', // URL de la imagen de ejemplo
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  evento.nameEvent,
                  style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text('Tipo: ${evento.typeEvent}'),
                const SizedBox(height: 4),
                Text('Descripción: ${evento.description}'),
                const SizedBox(height: 4),
                Text('Ubicación: ${evento.location}'),
                const SizedBox(height: 4),
                Text('Fecha: ${evento.date}'),
                const SizedBox(height: 4),
                Text('Hora de inicio: ${evento.hourStar}'),
                const SizedBox(height: 4),
                Text('Hora de fin: ${evento.hourEnd}'),
                const SizedBox(height: 4),
                Text('Capacidad: ${evento.capacity}  personas.'),
                const SizedBox(height: 16),
                Text('Owner: ${evento.owner}'),
                const SizedBox(height: 16),
                ElevatedButton.icon(
                  onPressed: () {
                  },
                  icon: const Icon(Icons.edit),
                  label: const Text('Editar evento'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}