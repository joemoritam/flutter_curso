import 'package:flutter/material.dart';
import 'circulo.dart';

class CirculosPage extends StatefulWidget {
  @override
  _CirculosPageState createState() => _CirculosPageState();
}

class _CirculosPageState extends State<CirculosPage> {

  List<String> _lista = [
    "Hola", "Otra Cosa", "Mas cosas", "Ya no se que poner", "Cosa agregada"
  ];


  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width,
      child: Stack(
        children: [

          Positioned(
            right: size.width*0.25,
            top: size.width*0.30,
            child: Circulo(
              radio: size.width*0.35,
              colores: [
                Colors.blue,
                Colors.blueAccent
              ],
            ),
          ),


          Positioned(
            right: -size.width*0.22,
            top: -size.width*0.36,
            child: Circulo(
              radio: size.width*0.45,
              colores: [
                Colors.deepPurple,
                Colors.purpleAccent
              ],
            ),
          ),

          Positioned(
            right: size.width*0.45,
            top: -size.width*0.34,
            child: Circulo(
              radio: size.width*0.35,
              colores: [
                Colors.red,
                Colors.redAccent
              ],
            ),
          ),

          SingleChildScrollView(
            child: Container(
              height: size.height,
              child: ListView.builder(
                  itemCount: _lista.length,
                  itemBuilder: (BuildContext context, int index){
                    return Container(
                      child: ListTile(
                        leading: Text(index.toString()),
                        title: Text("Opción"),
                        subtitle: Text(_lista[index]),
                        trailing: Icon(Icons.star),
                      ),
                    );
                  }
              ),
            ),
          )

        ],
      ),
    );
  }
}
