import 'package:flutter/material.dart';
import 'package:manejador_eventos/screens/LoginScreen/LoginPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  
  @override
  State createState() {
  return _MyAppState();
  }
}
class _MyAppState extends State<MyApp>{
  @override
  void initState(){
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
  return const MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "manejador de eventos",
    home: LoginPage(),

  ) ;
  }
}

