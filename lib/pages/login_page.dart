import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:movilsprinttwo/models/users_app.dart';
import 'package:movilsprinttwo/pages/register_user_page.dart';
import 'package:movilsprinttwo/pages/welcome_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../validations/validated_login.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _email = TextEditingController();
  final _password = TextEditingController();

  UserApp userLoad = UserApp.Empty();

  getUser() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Map<String,dynamic> userMap = jsonDecode(prefs.getString("UserApp")!);
    userLoad = UserApp.fromJson(userMap);
  }

  void _showMessage(String message){
    final scaffold = ScaffoldMessenger.of(context);
    scaffold.showSnackBar(
      SnackBar(content: Text(message),
        backgroundColor: Colors.cyan,
        duration: const Duration(seconds: 8),
        action: SnackBarAction(
            label: 'Aceptar', onPressed: scaffold.hideCurrentSnackBar),
      ),
    );
  }

  void _validatedUser(){
    getUser();
    if(_email.text == userLoad.email && _password.text == userLoad.password){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const WelcomePage()));
    }
  }

  void _onValidatedButtonClicked() async {
    String validate = validatedLogin().EntryIsValidated(_email, _password);
    if(validate=="Validated"){
      _validatedUser();

    }else{
      _showMessage(validate);
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("TURISMO ONLINE"),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Image(image: AssetImage('assets/images/login.png')),

                  //Entry user
                  const SizedBox(
                    height: 12.0,
                  ),

                  TextFormField(
                    controller: _email,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Escribe tu Correo electrónico',
                        suffixIcon: Icon(Icons.account_box_outlined)
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),

                  //Entry password
                  const SizedBox(
                    height: 12.0,
                  ),
                  TextFormField(
                    controller: _password,
                    maxLength: 8,
                    obscureText: true,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Escribe tu Contraseña',
                        suffixIcon: Icon(Icons.ac_unit)
                    ),
                    keyboardType: TextInputType.visiblePassword,
                  ),

                  //Button de Iniciar Sesion
                  ElevatedButton(
                    style: TextButton.styleFrom(
                        textStyle: const TextStyle(fontSize: 16)),
                    onPressed: () {
                      _onValidatedButtonClicked();
                    },
                    child: const Text("Iniciar Sesión"),
                  ),

                  //Button de Registrarse
                  TextButton(
                    style: TextButton.styleFrom(
                        textStyle: const TextStyle(
                            fontSize: 16,
                            fontStyle: FontStyle.italic,
                            color: Colors.purpleAccent)),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const RegisterPage()));
                    },
                    child: const Text("Registrarse"),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
