import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:manejador_eventos/controller/auth_controller/auth.dart';
import 'package:manejador_eventos/screens/widgets/login_register_form.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});
  
  @override
  
  State createState(){
    return _RegistrationPageStateState();

  }
  

}

class _RegistrationPageStateState extends State<RegistrationPage> {

  final AuthService _auth = AuthService();

  late String email = '',password = '',name = '';
 

  @override
  void initState(){
  super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Event Manager App'),
          backgroundColor: Colors.tealAccent.shade700,
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
              children: [
                //Image(image: AssetImage(""),),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Registrar Usuario ',style: TextStyle(color: Colors.black,fontSize: 20),),
                ),
                Padding(padding: const EdgeInsets.all(8.0),
                child: LoginRegisterForm(
                  onLogin: _validateRegister, 
                  buttonName: "Registrar Cuenta")
                )
              ],
          ),
        ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Volver a pantalla de Login',
        onPressed: (){
            context.go('/login-page');
        },child: const Icon(Icons.arrow_back)),  
      ),
    );
  }


void _validateRegister(String email , String password) async {
    print(email);
    print(password);
    
    var result = await _auth.createAccount(email, password);

    if (result == 1) {
      showDialog(
        
        context: context, 
        builder: (context)=> const AlertDialog(
          title: Text('Contraseña debil.'),
          icon: Icon(Icons.password_sharp),
          content: Text('La Contraseña ingresada es demasiado debil.'),
        )
        );
    } else if (result == 2){
      showDialog(
        
        context: context, 
        builder: (context)=> const AlertDialog(
          title: Text('Email en uso.'),
          icon: Icon(Icons.password_sharp),
          content: Text('Ese email ya esta registrado.'),
        )
        );
    } else if (result != null) {
      
      showDialog(
        
        context: context, 
        builder: (context)=> const AlertDialog(
          title: Text('Su cuenta se creo exitosamente!'),
          icon: Icon(Icons.password_sharp),
          content: Text('Ahora inicie sesion con su cuenta'),
        )
        );
      await Future.delayed(const Duration(seconds: 4));
      context.go('/login-page');
    }
  
}

}