import 'package:flutter/material.dart';
import '../atomos/campo_texto.dart';

// Molécula 2: Campo especializado para ingresar la contraseña
class CampoPassword extends StatelessWidget {
  final TextEditingController controller;
  final String? Function(String?)? validator;

  const CampoPassword({
    super.key,
    required this.controller,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return CampoTexto(
      controller: controller,
      label: 'Contraseña',
      hintText: 'Ingresa tu contraseña',
      icono: Icons.lock_outline,
      obscureText: true,
      keyboardType: TextInputType.visiblePassword,
      validator: validator,
    );
  }
}
