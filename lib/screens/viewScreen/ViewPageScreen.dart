import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
//para ver nuestros eventos
class ViewPageScreen extends StatefulWidget {
  const ViewPageScreen({super.key});

  @override
  State createState(){
    return _ViewPageScreen();
  }  
}

class _ViewPageScreen extends State<ViewPageScreen>{
  @override
  void initState(){
  super.initState();


}
  
  @override
  Widget build(BuildContext context) {
  return Scaffold(floatingActionButton: FloatingActionButton(onPressed: () { context.go('/menu-page'); },

  ));
}
}