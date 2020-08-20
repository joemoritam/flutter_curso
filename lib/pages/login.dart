import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import '../utils/functions.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  String _email, _password;
  bool _workingState = false;

  _submit(){

    if(_workingState) return;

    final isValid = _formKey.currentState.validate();


    if(isValid){


      setState(() {
        _workingState = true;
      });

      //lógica de verificación de usarios.
      print(_email);
      print(_password);

      //Navigator.of(context).pushNamed('home');

    }


  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        child: SingleChildScrollView(
          child: Container(
            width: size.width,
            height: size.height,
            child: SafeArea(
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        validator: (String x) {
                          if(x.isNotEmpty && Functions().validateEmail(x)){
                            _email = x;
                            return null;
                          }
                          return "Correo Inválido";
                        },
                        decoration: InputDecoration(
                            labelText: "Correo Electónico"
                        ),
                      ),

                      SizedBox(height: 40),
                      TextFormField(
                        keyboardType: TextInputType.text,
                        obscureText: true,
                        validator: (String texto){
                          if(texto.isNotEmpty && texto.length >= 8){
                            _password = texto;
                            return null;
                          }
                          return "Escribe una contraseña, con mínimo 8 caracteres.";
                        },
                        decoration: InputDecoration(
                            labelText: "Contraseña"
                        ),
                      ),

                      SizedBox(height: 40),
                      CupertinoButton(
                        //child: Text("Entrar"),
                        child: _workingState ? CircularProgressIndicator(backgroundColor: Colors.white) : Text("Entrar"),
                        onPressed: _submit,
                        color: Colors.blueAccent,
                      ),
                      SizedBox(height: 40),
                      //_workingState ? CircularProgressIndicator() : Container()

                    ],
                  ),
                ),
            ),
          )
        ),
      ),
    );
  }
}
