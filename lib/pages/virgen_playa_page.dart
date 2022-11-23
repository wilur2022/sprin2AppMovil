import 'package:flutter/material.dart';

import 'menu_site.dart';


class VirgenPlaya extends StatefulWidget {
  const VirgenPlaya({Key? key}) : super(key: key);

  @override
  State<VirgenPlaya> createState() => _VirgenPlayaState();
}

class _VirgenPlayaState extends State<VirgenPlaya> {
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
              const Text("Majestuoso templo de estilo gótico construido sobre una peña de San Pablo (Nariño), junto al caudal del río Mayo, por la vía que conduce a Florencia, Cauca. La obra cuenta con tres naves, cada uno con bóvedas. Al fondo de la nave central se conserva una pared de roca en donde posa la imagen de la virgen, con diferentes modificaciones de artistas al pasar el tiempo. La Virgen de la Playa, como fue reconocida por los sampableños, fue coronada el 6 de junio del año 2001, hecho histórico para San Pablo y la comunidad religiosa.",textAlign:TextAlign.justify,),

              const Divider(
                height: 25,
                thickness: 5,
                indent: 10,
                endIndent: 10,
                color: Colors.tealAccent,
              ),
              const Text("UBICACION GEOGRAFICA:",textAlign:TextAlign.center,style: TextStyle(fontStyle: FontStyle.italic,color: Colors.pink)),
              const Text("Ubicado en la localidad de San Pablo en el norte del departamento de Nariño, aproximadamente a unos 120 Kms de la capital, San Juan de Pasto.",textAlign:TextAlign.justify,),

              const Divider(
                height: 25,
                thickness: 5,
                indent: 10,
                endIndent: 10,
                color: Colors.tealAccent,
              ),
              const Text("IMAGEN DE LA VIRGEN",textAlign:TextAlign.center,style: TextStyle(fontStyle: FontStyle.italic,color: Colors.pink)),
              Image.network("https://4.bp.blogspot.com/_ZmXivnw_fvU/TD-HvV2Zq2I/AAAAAAAAABA/UE53fm3uLqs/s1600/San+Pablo.jpg"),
              const Divider(
                height: 25,
                thickness: 5,
                indent: 10,
                endIndent: 10,
                color: Colors.tealAccent,
              ),
              const Text("IMAGEN DE LA VIRGEN EN LA ROCA",textAlign:TextAlign.center,style: TextStyle(fontStyle: FontStyle.italic,color: Colors.pink)),
              Image.network("https://i.ytimg.com/vi/tbi4cOulfaQ/maxresdefault.jpg"),

              const Divider(
                height: 25,
                thickness: 5,
                indent: 10,
                endIndent: 10,
                color: Colors.tealAccent,
              ),
              const Text("PANORÁMICA FRONTAL DEL SANTUARIO",textAlign:TextAlign.center,style: TextStyle(fontStyle: FontStyle.italic,color: Colors.pink)),
              Image.network("https://th.bing.com/th/id/R.7a2c60d86c1a7a689855902bb06c28d4?rik=%2fRm2nKXghvwmeg&riu=http%3a%2f%2fcdn.municipios.com.co%2ffotos%2f799-2012-09-01-09-45-311-L.jpg&ehk=RJozFTVu%2bUzLSVrhfF0%2bvQCwjsnoevjrZ%2biDy5WxBKs%3d&risl=&pid=ImgRaw&r=0")

            ],
          )
      ),
    );
  }
}
