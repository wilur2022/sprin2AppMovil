import 'package:flutter/material.dart';
import 'menu_welcome.dart';



class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("SITIOS TURISTICOS",textAlign:TextAlign.center,style: TextStyle(
          color: Colors.white,
          fontSize: 16,

        )),
      ),
      drawer: const MenuWelcome(),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
        child: Card(
                  child: ListTile(
                    title: Text("Virgen de las Lajas"),

                  ),
                )

            )

        );

  }
}
