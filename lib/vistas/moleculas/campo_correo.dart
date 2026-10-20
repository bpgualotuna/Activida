import 'package:flutter/material.dart';
import '../atomos/campo_texto.dart';

// Molécula 1: Campo especializado para ingresar el correo electrónico
class CampoCorreo extends StatelessWidget {
  final TextEditingController controller;
  final String? Function(String?)? validator;

  const CampoCorreo({
    super.key,
    required this.controller,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return CampoTexto(
      controller: controller,
      label: 'Correo electrónico',
      hintText: 'ejemplo@correo.com',
      icono: Icons.email_outlined,
      keyboardType: TextInputType.emailAddress,
      validator: validator,
    );
  }
}
