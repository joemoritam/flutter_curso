import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import '../utils/session.dart';
import '../models/user.dart';
import '../utils/dialogs.dart';

class AuthAPI {

  final _session = new Session();

  Future<bool> login(BuildContext context, String login, String password) async {
    final url = "https://eservices.konverto.biz/api/login";

    final bx = '{"usuario":"$login","password":"$password","keepLogged":true}';

    final response = await http.post(url, body: bx, headers: {'Content-Type': 'application/json', 'Accept' : 'application/json'});

    //print(response.statusCode);
    //print(response.body);
    if(response.statusCode == 200) {
      final parsed = jsonDecode(response.body);
      final token = parsed["token"] as String;

      await _session.set(token);

      return true;
    } else {
      final parsed = jsonDecode(response.body);
      Dialogs.alert(context,title: "Error", message: parsed["title"]);
      return false;
    }

  }

  Future<String> getAccessToken() async {
    try {
      final result = await _session.get();
      if(result != null){
        final token = result["token"] as String;
        return token;
      }
      return null;
    } on PlatformException catch (e) {
      print("Error ${e.code}: ${e.message}");
    }
    return null;
  }

}