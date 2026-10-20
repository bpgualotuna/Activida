import 'package:flutter/material.dart';

// Átomo 3: Texto para títulos o etiquetas reutilizable
class TextoTitulo extends StatelessWidget {
  final String texto;
  final double tamano;
  final FontWeight peso;
  final Color? color;
  final TextAlign alineacion;

  const TextoTitulo({
    super.key,
    required this.texto,
    this.tamano = 22.0,
    this.peso = FontWeight.bold,
    this.color,
    this.alineacion = TextAlign.center,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      texto,
      textAlign: alineacion,
      style: TextStyle(
        fontSize: tamano,
        fontWeight: peso,
        color: color ?? Colors.black87,
      ),
    );
  }
}
