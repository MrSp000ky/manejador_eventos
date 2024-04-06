import 'package:flutter/material.dart';
import 'package:manejador_eventos/screens/menu/MenuPage.dart';
import 'package:manejador_eventos/screens/LoginScreen/RegistrationPage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State createState(){
  return _LoginPageState();
  
} 
}

class _LoginPageState extends State<LoginPage> {
  late String email,password;
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
          title: Text('login'),
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
            children: [
              //logo que pondremos de la aplicacion 
              //Image(image: AssetImage(""),),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('login page',style: TextStyle(color: Colors.black,fontSize: 20),),
              ),
              Padding(padding: const EdgeInsets.all(8.0),
              child: formulario(),
              ),
              butonLogin(),
              TextRegister(),
            ],
        )
      ),
    );
  }
  Widget formulario(){
    return Form(
      key: _formkey,
        child: Column(children: [
          Text('Correo'),
          buildEmail(),
          const Padding(padding: EdgeInsets.only(top: 12)),
          Text('contraseña'),
          buildPassword(),
    ],));
  }
  Widget buildEmail(){
return TextFormField(
  decoration: InputDecoration(
    labelText: "Correo",
    border: OutlineInputBorder(
      borderRadius: new BorderRadius.circular(8),
      borderSide:  new BorderSide(color: Colors.black)
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
      borderRadius: new BorderRadius.circular(8),
      borderSide:  new BorderSide(color: Colors.black)
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
return ElevatedButton(onPressed: (){
  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => MenuPage()), (route) => false);
  //Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => RegistrationPage()), (route) => false);
  
}, 
child: Text("login"),
);
}
Widget TextRegister(){
  return Row(
    
    children: [
      Text('eres nuevo?'),
      TextButton(onPressed: (){
      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => RegistrationPage()), (route) => false);
      
        
      }, child: Text('registrate aqui pa ')),
    ],
  );
}
}