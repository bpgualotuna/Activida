import 'package:flutter/material.dart';

// Átomo 5: Espaciador reutilizable entre widgets
class Espacio extends StatelessWidget {
  final double alto;
  final double ancho;

  const Espacio({
    super.key,
    this.alto = 16.0,
    this.ancho = 0.0,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: alto,
      width: ancho,
    );
  }
}
