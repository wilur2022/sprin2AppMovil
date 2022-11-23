import 'package:flutter/material.dart';

import 'menu_site.dart';

class VirgenLajas extends StatefulWidget {
  const VirgenLajas({Key? key}) : super(key: key);

  @override
  State<VirgenLajas> createState() => _VirgenLajasState();
}

class _VirgenLajasState extends State<VirgenLajas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Santuario de la Virgen de las Lajas",textAlign:TextAlign.center,style: TextStyle(
          color: Colors.white,
          fontSize: 16,

        )),
      ),
      drawer: const MenuSite(),

      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
          child: ListView(
                children: [

                  const Divider(
                    height: 25,
                    thickness: 5,
                    indent: 10,
                    endIndent: 10,
                    color: Colors.tealAccent,
                  ),
                  const Text("DESCRIPCION:",textAlign:TextAlign.center,style: TextStyle(fontStyle: FontStyle.italic,color: Colors.pink)),
                  const Text("El Santuario de Nuestra Señora del Rosario de Las Lajas es un templo y basílica para el culto cristiano y veneración de Nuestra Señora de Las Lajas. Declarado monumento parte del patrimonio cultural (1984), Bien de Interés Cultural de Carácter Nacional (2006) y en 2015 el diario británico The Daily Telegraph eligió al Santuario de Las Lajas de una lista de 23 iglesias como la iglesia más bella del mundo por su ubicación y arquitectura.",textAlign:TextAlign.justify,),

                  const Divider(
                    height: 25,
                    thickness: 5,
                    indent: 10,
                    endIndent: 10,
                    color: Colors.tealAccent,
                  ),
                  const Text("UBICACION GEOGRAFICA:",textAlign:TextAlign.center,style: TextStyle(fontStyle: FontStyle.italic,color: Colors.pink)),
                  const Text("El santuario está situado en el cañón del río Guáitara, en el corregimiento de Las Lajas del municipio de Ipiales, a siete kilómetros de la cabecera municipal, en el departamento de Nariño, Colombia, a 10 km de la frontera con el Ecuador.",textAlign:TextAlign.justify,),

                  const Divider(
                    height: 25,
                    thickness: 5,
                    indent: 10,
                    endIndent: 10,
                    color: Colors.tealAccent,
                  ),
                  const Text("PANORÁMICA NOCTURNA DEL SANTUARIO",textAlign:TextAlign.center,style: TextStyle(fontStyle: FontStyle.italic,color: Colors.pink)),
                  Image.network("https://th.bing.com/th/id/R.1c119a599c538242c35ffb8c7d1544a4?rik=DOnxQLDQH3Dteg&riu=http%3a%2f%2fwww.renunciamosyviajamos.com%2fwp-content%2fuploads%2f2016%2f12%2fSantuario-de-las-lajas-Colombia-Renunciamos-y-viajamos-4.jpg&ehk=VvrT8wN0NTJC1chL6LjJZmqHxsCQdQbgIr7otdGZjQg%3d&risl=&pid=ImgRaw&r=0"),
                  const Divider(
                    height: 25,
                    thickness: 5,
                    indent: 10,
                    endIndent: 10,
                    color: Colors.tealAccent,
                  ),
                  const Text("ALTAR PRINCIPAL DEL SANTUARIO",textAlign:TextAlign.center,style: TextStyle(fontStyle: FontStyle.italic,color: Colors.pink)),
                  Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/4/45/P1050205.JPG/800px-P1050205.JPG"),

                  const Divider(
                    height: 25,
                    thickness: 5,
                    indent: 10,
                    endIndent: 10,
                    color: Colors.tealAccent,
                  ),
                  const Text("PANORÁMICA FRONTAL DEL SANTUARIO",textAlign:TextAlign.center,style: TextStyle(fontStyle: FontStyle.italic,color: Colors.pink)),
                  Image.network("https://th.bing.com/th/id/OIP.LJvnQFuG2GsrKOSGEiSyKQHaLJ?pid=ImgDet&rs=1")

                ],
              )
          ),
    );
  }
}
