import 'package:flutter/material.dart';

// Átomo 4: Ícono decorativo reutilizable
class IconoLogin extends StatelessWidget {
  final IconData icono;
  final double tamano;
  final Color? color;

  const IconoLogin({
    super.key,
    this.icono = Icons.account_circle,
    this.tamano = 80.0,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Icon(
      icono,
      size: tamano,
      color: color ?? Theme.of(context).primaryColor,
    );
  }
}
