import 'package:flutter/material.dart';
import 'package:manejador_eventos/screens/menu/MenuPage.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});
  
  @override
  
  State createState(){
    return _RegistrationPageStateState();

  }
  

}

class _RegistrationPageStateState extends State<RegistrationPage> {
  late String email,password,name;
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
          title: const Text('Registro'),
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
            children: [
              //Image(image: AssetImage(""),),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('regitration page ',style: TextStyle(color: Colors.black,fontSize: 20),),
              ),
              Padding(padding: const EdgeInsets.all(8.0),
              child: formulario(),
              ),
              butonRegister(),
            ],
        )
      ),
    );
  }
  Widget formulario(){
    return Form(
      key: _formkey,
        child: Column(children: [
          const Text('nombre usuario'),
          const Padding(padding: EdgeInsets.only(top:12)),
          buildName(),
          const Text('Correo'),
          buildEmail(),
          const Padding(padding: EdgeInsets.only(top: 12)),
          const Text('contraseña'),
          buildPassword(),const Padding(padding: EdgeInsets.only(top: 12)),
          
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
Widget butonRegister(){
return ElevatedButton(onPressed: (){
  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const MenuPage()), (route) => false);
  //Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => RegistrationPage()), (route) => false);
  
}, 
child: Text("registrar"),
);
}
Widget buildName(){
return TextFormField(
  decoration: InputDecoration(
    labelText: "nombre de usuario",
    border: OutlineInputBorder(
      borderRadius: new BorderRadius.circular(8),
      borderSide:  new BorderSide(color: Colors.black)
    )

  ),
  keyboardType: TextInputType.name,
  
  onSaved: (String? value){
    name= value!;
  },
  validator:(value){
  if(value!.isEmpty)
  {
    return "Es obligatorio llenar el campo pa";
  }
  return null;
}, );
}
}