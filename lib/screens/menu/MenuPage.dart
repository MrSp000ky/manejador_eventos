import 'package:flutter/material.dart';
import 'package:manejador_eventos/screens/LoginScreen/LoginPage.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key, });
 

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("MENU PARA LOS EVENTOS PROXIMAMENTE"),
      ),
      
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Menu Items para Event Manager',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
         mainAxisAlignment: MainAxisAlignment.end, 
        crossAxisAlignment: CrossAxisAlignment.end, 
        children: [
          FloatingActionButton(
            elevation: 6,
            backgroundColor: Colors.red,
            foregroundColor: Colors.white,
            onPressed: (){
              Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => LoginPage()), (route) => false);
          },
            child: const Icon(Icons.logout_sharp)
            ), 
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
