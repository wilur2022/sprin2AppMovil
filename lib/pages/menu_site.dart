import 'package:flutter/material.dart';
import 'package:movilsprinttwo/pages/welcome_page.dart';
import 'login_page.dart';



class MenuSite extends StatefulWidget {
  const MenuSite({Key? key}) : super(key: key);

  @override
  State<MenuSite> createState() => _MenuSiteState();
}

class _MenuSiteState extends State<MenuSite> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
                color: Colors.lightBlueAccent
            ),
            child: Image(image: AssetImage('assets/images/turismo.png')),
          ),
          Column(
            children: [
              ListTile(
                leading: const Icon(Icons.backspace, size: 20, color: Colors.lightBlue,),
                title: const Text("Regresar", style: TextStyle(fontSize: 20),),
                textColor: Colors.green,
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const WelcomePage()));
                },

              ),
              ListTile(
                leading: const Icon(Icons.exit_to_app, size: 20, color: Colors.lightBlue,),
                title: const Text("Salir", style: TextStyle(fontSize: 20),),
                textColor: Colors.green,
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const LoginPage()));
                },
              )
            ],
          )
        ],
      ),
    );
  }
}
