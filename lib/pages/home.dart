import 'package:flutter/material.dart';
import '../widgets/lista.dart';
import '../widgets/usos.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 1;

  void _onItemTapped(int index){
    setState(() {
      _currentIndex = index;
    });
  }

  List<BottomNavigationBarItem> _items = [
    BottomNavigationBarItem(
      icon: Icon(Icons.list),
      title: Text("Lista")
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.toc),
      title: Text("Usos")
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.settings),
      title: Text("Opción 3")
    ),
    BottomNavigationBarItem(
        icon: Icon(Icons.email),
        title: Text("Opción 4")
    )
  ];

  List<Widget> _widgetsOptions = <Widget> [
    Lista(),
    UsosPage(),
    Container(color: Colors.black),
    Container(color: Colors.blue)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mi primera App", style: TextStyle(color: Colors.white)),
      ),
      body: _widgetsOptions.elementAt(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: _items,
        currentIndex: _currentIndex,
        onTap: _onItemTapped,
        backgroundColor: Colors.blue,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}