import 'package:flutter/material.dart';
import '../models/users_app.dart';
import '../validations/validated_register.dart';
import 'login_page.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}
enum Nationality { colombiano, extranjero }
class _RegisterPageState extends State<RegisterPage> {
  final _name = TextEditingController();
  final _phone = TextEditingController();
  final _email = TextEditingController();
  final _password = TextEditingController();
  final _repeatpassword = TextEditingController();
  Nationality? _nationality = Nationality.colombiano;


  void _showDialogMessage(String message){
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text("INFORMACION IMPORTANTE",
            style: TextStyle(
                fontSize: 16, fontStyle: FontStyle.italic, color: Colors.red)),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.of(ctx).pop();
            },
            child: Container(
              color: Colors.cyan,
              padding: const EdgeInsets.all(14),
              child: const Text("OK"),
            ),
          ),
        ],
        content: Text(message),
      ),
    );
  }

  void _registerUser(UserApp user) async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("UserApp",jsonEncode(user));
  }

  void _onRegisterButtonClicked() {
    String validation = validateEntry().EntryIsValidated(
        _name, _phone, _email, _password, _repeatpassword);
    setState(() {
      if (validation=="Validated"){
        String nationality = "COLOMBIANO";
        if (_nationality == Nationality.extranjero) {
          nationality = "EXTRANJERO";
        }
        var user = UserApp("",_name.text, _phone.text, _email.text, _password.text, nationality);
        _registerUser(user);
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const LoginPage() ));
      }else{
        _showDialogMessage(validation);
      }
    });
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

                  //Entry name
                  const SizedBox(
                    height: 12.0,
                  ),
                  TextFormField(
                    controller: _name,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Nombre completo',
                        suffixIcon: Icon(Icons.accessibility_new)),

                    keyboardType: TextInputType.text,
                  ),

                  //Entry phone
                  const SizedBox(
                    height: 12.0,
                  ),
                  TextFormField(
                    controller: _phone,
                    maxLength: 10,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Teléfono o Celular',
                        suffixIcon: Icon(Icons.ad_units_outlined)),
                    keyboardType: TextInputType.phone,
                  ),

                  //Entry email
                  const SizedBox(
                    height: 12.0,
                  ),
                  TextFormField(
                    controller: _email,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Escribe tu Correo electrónico',
                        suffixIcon: Icon(Icons.mail_lock_outlined)),

                    keyboardType: TextInputType.emailAddress,
                  ),

                  //Entry password
                  const SizedBox(
                    height: 12.0,
                  ),
                  TextFormField(
                    controller: _password,
                    obscureText: true,
                    maxLength: 8,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Escribe tu Contraseña',
                        suffixIcon: Icon(Icons.password)),
                    keyboardType: TextInputType.visiblePassword,
                  ),

                  //Entry repeatpassword
                  const SizedBox(
                    height: 12.0,
                  ),
                  TextFormField(
                    controller: _repeatpassword,
                    obscureText: true,
                    maxLength: 8,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Reescribe tu Contraseña',
                        suffixIcon: Icon(Icons.password)),
                    keyboardType: TextInputType.visiblePassword,
                  ),
                  const Divider(
                    height: 25,
                    thickness: 5,
                    indent: 20,
                    endIndent: 10,
                    color: Colors.tealAccent,
                  ),
                  const Text(
                    "NACIONALIDAD",
                    style: TextStyle(fontSize: 14, fontStyle: FontStyle.italic),
                  ),

                  //Seleccion de nacionalidad
                  Row(
                    children: [
                      Expanded(
                        child: ListTile(
                          title: const Text(
                            'COLOMBIANO',
                            style: TextStyle(
                                fontSize: 12, fontStyle: FontStyle.italic),
                          ),
                          leading: Radio<Nationality>(
                            value: Nationality.colombiano,
                            groupValue: _nationality,
                            onChanged: (Nationality? value) {
                              setState(() {
                                _nationality = value;
                              });
                            },
                          ),
                        ),
                      ),
                      Expanded(
                        child: ListTile(
                          title: const Text(
                            'EXTRANJERO',
                            style: TextStyle(
                                fontSize: 12, fontStyle: FontStyle.italic),
                          ),
                          leading: Radio<Nationality>(
                            value: Nationality.extranjero,
                            groupValue: _nationality,
                            onChanged: (Nationality? value) {
                              setState(() {
                                _nationality = value;
                              });
                            },
                          ),
                        ),
                      ),
                    ],
                  ),

                  const Divider(
                    height: 25,
                    thickness: 5,
                    indent: 10,
                    endIndent: 10,
                    color: Colors.tealAccent,
                  ),

                  //Button de Registrarse
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(200, 50),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)
                      ),
                      shadowColor: Colors.green,
                      textStyle: const TextStyle(
                          fontStyle: FontStyle.italic,
                          fontSize: 16),
                    ),
                    onPressed: () {
                      _onRegisterButtonClicked();
                    },
                    child: const Text("REGISTRAR DATOS"),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
