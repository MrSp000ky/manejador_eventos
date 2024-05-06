import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:manejador_eventos/models/event_model.dart';

class EventController {
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;

  Future<String> createEvent(Event event) async {
    final docRef = await _firebaseFirestore.collection('events').add(event.toMap());
    await docRef.update({'id': docRef.id});
    return docRef.id;
  }

    Future<void> updateEvent(Event event) async {
    await _firebaseFirestore.collection('events').doc(event.id).update(event.toMap());
  }
}
