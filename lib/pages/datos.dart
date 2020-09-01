import 'package:flutter/material.dart';
import '../providers/user_provider.dart';
import '../utils/session.dart';

class DatosPage extends StatefulWidget {
  @override
  _DatosPageState createState() => _DatosPageState();
}

class _DatosPageState extends State<DatosPage> {
  UserProvider _userProvider;
  Session _session = new Session();

  _onExit(){
    _session.clear();
    Navigator.pushReplacementNamed(context, "login");
  }

  @override
  Widget build(BuildContext context) {
    _userProvider = UserProvider.of(context);
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(_userProvider.data.email),
          Image.network(_userProvider.data.usuarioImage),
          Text(_userProvider.data.username, style: TextStyle(fontWeight: FontWeight.bold)),

          FlatButton(
            child: Text("Salir", style: TextStyle(color: Colors.white)),
            color: Colors.blueAccent,
            onPressed: () => _onExit(),
          )
        ],
      ),
    );
  }
}
