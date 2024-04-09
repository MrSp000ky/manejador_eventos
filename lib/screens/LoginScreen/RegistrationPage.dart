import 'package:flutter/material.dart';
import 'package:manejador_eventos/screens/menu/MenuPage.dart';
import 'package:manejador_eventos/screens/LoginScreen/LoginPage.dart';
import 'package:manejador_eventos/utils/auth.dart';

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
                child: Text('Registrar Usuario ',style: TextStyle(color: Colors.black,fontSize: 20),),
              ),
              Padding(padding: const EdgeInsets.all(8.0),
              child: formulario(),
              ),
              butonRegister(),
            ],
        ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Volver a pantalla de Login',
        onPressed: (){
            Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => LoginPage()), (route) => false);

        },child: const Icon(Icons.arrow_back)),  
      ),
    );
  }


  Widget formulario(){
    return Form(
      key: _formkey,
        child: Column(children: [
          const Text('UserName'),
          const Padding(padding: EdgeInsets.only(top:12)),
          buildName(),
          const Text('Correo'),
          buildEmail(),
          const Padding(padding: EdgeInsets.only(top: 12)),
          const Text('Contraseña'),
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
    }, 
  );
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
return ElevatedButton(onPressed: ()async{

  if(_formkey.currentState?.validate()==true){

    _formkey.currentState?.save();
    print(email);
    print(password);
    
    var result = await _auth.createAccount(email, password);

    if (result == 1) {
      showDialog(
        // ignore: use_build_context_synchronously
        context: context, 
        builder: (context)=> const AlertDialog(
          title: Text('Contraseña debil.'),
          icon: Icon(Icons.password_sharp),
          content: Text('La Contraseña ingresada es demasiado debil.'),
        )
        );
    } else if (result == 2){
      showDialog(
        // ignore: use_build_context_synchronously
        context: context, 
        builder: (context)=> const AlertDialog(
          title: Text('Email en uso.'),
          icon: Icon(Icons.password_sharp),
          content: Text('Ese email ya esta registrado.'),
        )
        );
    } else if (result != null) {
      // ignore: use_build_context_synchronously
      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const MenuPage()), (route) => false);
    }




  }


  //Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => RegistrationPage()), (route) => false);
  
}, 
child: const Text("Registrar Cuenta"),
);
}


Widget buildName(){
return TextFormField(
  decoration: InputDecoration(
    labelText: "UserName",
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide:  const BorderSide(color: Colors.black)
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