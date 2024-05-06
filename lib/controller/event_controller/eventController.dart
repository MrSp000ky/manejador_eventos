import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:manejador_eventos/models/event_model.dart';

class EventController {
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;

  Future<void> createEvent(Event event) async {
    await _firebaseFirestore.collection('events').add(event.toMap());
  }
}
