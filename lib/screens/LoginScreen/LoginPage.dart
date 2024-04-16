import 'package:flutter/material.dart';
import 'package:manejador_eventos/screens/menu/MenuPage.dart';
import 'package:manejador_eventos/screens/LoginScreen/RegistrationPage.dart';
import 'package:manejador_eventos/controller/auth_controller/auth.dart';

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
  final _formkey=GlobalKey<FormState>();
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
          backgroundColor: Colors.tealAccent.shade700
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
              children: [
                //logo que pondremos de la aplicacion 
                //Image(image: AssetImage(""),),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('LogIn',style: TextStyle(color: Colors.black,fontSize: 20),),
                ),
                Padding(padding: const EdgeInsets.all(8.0),
                child: formulario(),
                ),
                butonLogin(),
                TextRegister(),
              ],
          ),
        )
      ),
    );
  }


  Widget formulario(){
    return Form(
      key: _formkey,
        child: Column(children: [
          const Text('Correo'),
          buildEmail(),
          const Padding(padding: EdgeInsets.only(top: 12)),
          const Text('Contraseña'),
          buildPassword(),
    ],));
  }



  Widget buildEmail(){
return TextFormField(
  decoration: InputDecoration(
    labelText: "Correo",
    border: OutlineInputBorder(
      borderRadius:  BorderRadius.circular(8),
      borderSide:  const BorderSide(color: Colors.black)
    )
  ),
  keyboardType: TextInputType.emailAddress,
  onSaved: (String? value){
    email= value!;
  },
  validator:(value){
  if(value!.isEmpty)
  {
    return "Es obligatorio llenar el campo pa";
  }
  return null;
}, );
}


Widget buildPassword(){
  return TextFormField(
    decoration: InputDecoration(
    labelText: "Contraseña",
    border: OutlineInputBorder(
      borderRadius:  BorderRadius.circular(8),
      borderSide:   const BorderSide(color: Colors.black)
    )

  ),
obscureText: true,
validator:(value){
  if(value!.isEmpty)
  {
    return "Es obligatorio llenar el campo pa";
  }
  return null;
},
onSaved: (String? value){
    password= value!;
  },
  );

  }
Widget butonLogin()
{
return ElevatedButton(onPressed: ()async{
  if(_formkey.currentState?.validate()==true){

    _formkey.currentState?.save();
    print(email);
    print(password);
    
    var result = await _auth.signInEmailAndPassword(email, password);
    print(result);
    if (result == 1 || result == 2 || result == null) {
      showDialog(
        // ignore: use_build_context_synchronously
        context: context, 
        builder: (context)=> const AlertDialog(
          title: Text('Usuario/Password invalido'),
          icon: Icon(Icons.password_sharp),
          content: Text('Intente Denuevo'),
        )
        );
    } else if (result != null) {
      // ignore: use_build_context_synchronously
      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const MenuPage()), (route) => false);
    }
  }  //Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => RegistrationPage()), (route) => false);
}, 
child: const Text("LogIn"),
);


}
Widget TextRegister(){
  return Row(
    
    children: [
     const Text('¿Eres nuevo?'),
      TextButton(onPressed: (){
      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => RegistrationPage()), (route) => false);
      
        
      }, child: const Text('¡Registrate aqui! ')),
    ],
  );
}
}