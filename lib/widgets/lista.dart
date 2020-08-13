import 'package:flutter/material.dart';

class Lista extends StatefulWidget {
  @override
  _ListaState createState() => _ListaState();
}

class _ListaState extends State<Lista> {

  List<String> _lista = [
    "Hola", "Otra Cosa", "Mas cosas", "Ya no se que poner", "Cosa agregada"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: ListView.builder(
          itemCount: _lista.length,
          itemBuilder: (BuildContext context, int index){
            return Card(
              child: ListTile(
                leading: Text(index.toString()),
                title: Text("Opción"),
                subtitle: Text(_lista[index]),
                trailing: Icon(Icons.star),
              ),
            );
          }
      ),
    );
  }
}
