import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key, });

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  final double sizedBoxHeight = 20;

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:  Colors.tealAccent.shade700,
        title: const Text("Menu Principal"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
          SizedBox(
            height: sizedBoxHeight,
          ),
          ListTile(
            title: const Text('Creacion de evento'),
            subtitle: const Text('proximamente'),
            tileColor: Colors.cyan,
            onTap: () => context.go('/creation-event'),
          ),
           SizedBox(
            height: sizedBoxHeight,
          ),
          ListTile(
            title: const Text('Ver eventos'),
            subtitle: const Text('proximamente'),
            tileColor: Colors.red,
            onTap:() => context.go('/view-event'),
            ),
            SizedBox(
            height: sizedBoxHeight,
          ),
            ListTile(
            title: const Text('Editar eventos'),
            subtitle: const Text('proximamente'),
            tileColor: Colors.orange,
            onTap:() => context.go('/view-event'),
            )
          ],
        ),
      ),
      
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end, 
        crossAxisAlignment: CrossAxisAlignment.end, 
        children: [
          FloatingActionButton(
            tooltip: "Cerrar Sesion",
            elevation: 6,
            backgroundColor: Colors.red,
            foregroundColor: Colors.white,
            onPressed: (){
              context.go('/login-page');
          },
            child: const Icon(Icons.logout_sharp)
            ), 
        ],
      ), 
    );
  }
}