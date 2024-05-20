import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manejador_eventos/controller/event_controller/eventController.dart';
import 'package:manejador_eventos/models/event_model.dart';
import 'package:manejador_eventos/presentation/providers/auth_provider.dart';


final eventProvider = NotifierProvider<EventNotifier, List<Event>>(EventNotifier.new);

class EventNotifier extends Notifier<List<Event>> {
  final EventController _eventController = EventController();
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  @override
  List<Event> build() {
    return [];
  }

  Future<void> fetchEvents() async {
    final eventsRef = _firestore.collection('events');
    final eventsSnapshot = await eventsRef.get();
    final events = eventsSnapshot.docs.map((doc) => Event.fromMap(doc.data())).toList();
    state = events;
  }


  Future<void> createEvent(Event event) async {
    final documentId = await _eventController.createEvent(event);
    event.id = documentId; 
    state = [...state, event];
  }


  Future<void> updateEvent(Event event) async {
    await _eventController.updateEvent(event);
    await fetchEvents();
  }

  Future<bool> joinEvent(Event event) async {
    final username = ref.read(authProvider.notifier).currentUser?.username;
    try {
      if (event.availability > 0) {
        event.availability--;
        await _eventController.joinEvent(event, username);
        
        return true;
      } else {
        return false;
      }
    // ignore: empty_catches
    } catch (e) {
    }
    return false;
  }


}