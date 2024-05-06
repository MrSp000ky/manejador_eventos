class Event {
  final String nameEvent;
  final String typeEvent;
  final String description;
  final String location;
  final String date;
  final String hourStar;
  final String hourEnd;
  final String capacity;
  final String owner;

  Event({
    required this.nameEvent,
    required this.typeEvent,
    required this.description,
    required this.location,
    required this.date,
    required this.hourStar,
    required this.hourEnd,
    required this.capacity,
    required this.owner
  });

  Map<String, dynamic> toMap() {
    return {
      'nameEvent': nameEvent,
      'typeEvent': typeEvent,
      'description': description,
      'location': location,
      'date': date,
      'hourStar': hourStar,
      'hourEnd': hourEnd,
      'capacity': capacity,
      'owner': owner,
    };
  }


  factory Event.fromMap(Map<String, dynamic> data) {
    return Event(
      nameEvent: data['nameEvent'],
      typeEvent: data['typeEvent'],
      description: data['description'],
      location: data['location'],
      date: data['date'],
      hourStar: data['hourStar'],
      hourEnd: data['hourEnd'],
      capacity: data['capacity'].toString(),
      owner: data['owner']?? 'Not Registered',
    );
  }

}