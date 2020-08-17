import 'package:flutter/material.dart';

class Circulo extends StatelessWidget {
  final double radio;
  final List<Color> colores;

  const Circulo({Key key, this.radio, this.colores}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: radio * 2,
      height: radio * 2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radio),
        gradient: LinearGradient(
          colors: colores,
          begin: Alignment.topRight,
          end: Alignment.bottomLeft
        )
      ),
    );
  }
}


