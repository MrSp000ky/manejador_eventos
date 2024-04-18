import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:manejador_eventos/controller/auth_controller/auth.dart';
import 'package:manejador_eventos/screens/widgets/login_register_form.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State createState(){
  return _LoginPageState();
  
} 
}

class _LoginPageState extends State<LoginPage> {
  final AuthService _auth = AuthService();

  late String email = '',password = '';


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
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'LogIn',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: LoginRegisterForm(
                  buttonName: "LogIn",
                  onLogin: _validateLogin, // Pasamos la función de callback
                ),
              ),
              TextRegister(),
            ],
          ),
        ),
      ),
    );
  }


void _validateLogin(String email, String password) async {
    var result = await _auth.signInEmailAndPassword(email, password);
    print(result);
    if (result == 1 || result == 2 || result == null) {
      showDialog(
        context: context,
        builder: (context) => const AlertDialog(
          title: Text('Usuario/Password invalido'),
          icon: Icon(Icons.password_sharp),
          content: Text('Intente Denuevo'),
        ),
      );
    } else if (result != null) {
      context.go('/menu-page');
    }
  }

Widget TextRegister(){
  return Row(
    children: [
     const Text('¿Eres nuevo?'),
      TextButton(onPressed: (){
      context.go('/new-user');  
      }, child: const Text('¡Registrate aqui! ')),
      ],
    );
  }
}