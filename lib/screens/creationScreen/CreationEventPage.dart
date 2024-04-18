import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
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
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('creation event'),
        ),
        body: SingleChildScrollView(
          child: Column(children: [  
            formulario(),
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
Widget formulario(){
    return Form(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextFormField(
                  decoration: InputDecoration(
                      labelText: "nombre del evento",
                      border: OutlineInputBorder(
                      borderRadius:  BorderRadius.circular(5),
                      borderSide:  const BorderSide(color: Colors.black)
                  )
                  ),
                ),
                const Padding(padding: EdgeInsets.only(top: 12)),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: "tipo de evento",
                      border: OutlineInputBorder(
                      borderRadius:  BorderRadius.circular(5),
                      borderSide:  const BorderSide(color: Colors.black)
                  )
                  ),
                ),
                const Padding(padding: EdgeInsets.only(top: 12)),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: "descripcion",
                      border: OutlineInputBorder(
                      borderRadius:  BorderRadius.circular(5),
                      borderSide:  const BorderSide(color: Colors.black)
                  )
                  ),
                ),
                const Padding(padding: EdgeInsets.only(top: 12)),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: "ubicacion",
                      border: OutlineInputBorder(
                      borderRadius:  BorderRadius.circular(5),
                      borderSide:  const BorderSide(color: Colors.black)
                  )
                  ),
                ),
                const Padding(padding: EdgeInsets.only(top: 12)),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: "fecha",
                      border: OutlineInputBorder(
                      borderRadius:  BorderRadius.circular(5),
                      borderSide:  const BorderSide(color: Colors.black)
                  )
                  ),
                ),
                const Padding(padding: EdgeInsets.only(top: 12)),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: "hora de inicio",
                      border: OutlineInputBorder(
                      borderRadius:  BorderRadius.circular(5),
                      borderSide:  const BorderSide(color: Colors.black)
                  )
                  ),
                ),
                const Padding(padding: EdgeInsets.only(top: 12)),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: "hora de fin",
                      border: OutlineInputBorder(
                      borderRadius:  BorderRadius.circular(5),
                      borderSide:  const BorderSide(color: Colors.black)
                  )
                  ),
                ),
                const Padding(padding: EdgeInsets.only(top: 12)),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: "aforo",
                      border: OutlineInputBorder(
                      borderRadius:  BorderRadius.circular(5),
                      borderSide:  const BorderSide(color: Colors.black)
                  )
                  ),
                ),
                const Padding(padding: EdgeInsets.only(top: 12)),
                ],
                ),
          )
          );
    
  }

Widget BuildnameEvent(){
return TextFormField(
  decoration: InputDecoration(
    labelText: "nombre del evento",
    border: OutlineInputBorder(
      borderRadius:  BorderRadius.circular(5),
      borderSide:  const BorderSide(color: Colors.black)
    )
  ),
);
}
Widget buidldesciptionEvent(){
  return TextFormField(
      decoration: InputDecoration(
        labelText: "Descripcion",
        border: OutlineInputBorder(
          borderRadius:  BorderRadius.circular(8),
          borderSide:  const BorderSide(color: Colors.black),
        )
      ),
      );
}
Widget buidlTipeEvent(){
  return 
      TextFormField(
      decoration: InputDecoration(
        labelText: "Tipo de evento",
        border: OutlineInputBorder(
          borderRadius:  BorderRadius.circular(8),
          borderSide:  const BorderSide(color: Colors.black),
        )
      ),
      );
}
Widget BuildlLocationEvent(){
return TextFormField(
  decoration: InputDecoration(
    labelText: "ubicacion",
    border: OutlineInputBorder(
      borderRadius:  BorderRadius.circular(8),
      borderSide:  const BorderSide(color: Colors.black)
    )
  ),

);
}
Widget BuildldateEvent(){
return TextFormField(
  decoration: InputDecoration(
    labelText: "fecha",
    border: OutlineInputBorder(
      borderRadius:  BorderRadius.circular(8),
      borderSide:  const BorderSide(color: Colors.black)
    )
  ),

);
}
Widget BuildlhourStartEvent(){
return TextFormField(
  decoration: InputDecoration(
    labelText: "hora de inicio",
    border: OutlineInputBorder(
      borderRadius:  BorderRadius.circular(8),
      borderSide:  const BorderSide(color: Colors.black)
    )
  ),
);
}
Widget BuildlhourEndEvent(){
return TextFormField(
  decoration: InputDecoration(
    labelText: "hora de  fin",
    border: OutlineInputBorder(
      borderRadius:  BorderRadius.circular(8),
      borderSide:  const BorderSide(color: Colors.black)
    )
  ),
);
}
Widget BuildlCapacityEvent(){
return TextFormField(
  decoration: InputDecoration(
    labelText: "aforo",
    border: OutlineInputBorder(
      borderRadius:  BorderRadius.circular(8),
      borderSide:  const BorderSide(color: Colors.black)
    )
  ),

);
}
