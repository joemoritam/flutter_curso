import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../api/auth_api.dart';
import '../models/user.dart';
import '../providers/user_provider.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  final _authAPI = new AuthAPI();

  UserProvider _userProvider;

  @override
  void initState() {
    super.initState();
    this.check();
  }


  check() async {
    final token = await _authAPI.getAccessToken();
    //print(token);
    if(token != null){
      final jwt = token.split(".");
      final payload = json.decode(utf8.decode(base64.decode(base64.normalize(jwt[1]))));

      final User user = new User(
        userId: payload["userId"],
          username: payload["nombre"],
        email: payload["email"],
        sexo: payload["sexo"],
        usuarioImage: payload["usuarioImage"],
        token:token
      );
      _userProvider.data = user;

      Navigator.pushReplacementNamed(context, "home");

    } else {
      Navigator.pushReplacementNamed(context, "login");
    }
  }

  @override
  Widget build(BuildContext context) {
    _userProvider = UserProvider.of(context);
    return Scaffold(
      body: Center(
        child: CupertinoActivityIndicator(
          radius: 15,
        ),
      ),
    );
  }
}
