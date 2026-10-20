import 'package:flutter/material.dart';

// Átomo 1: Campo de texto reutilizable
class CampoTexto extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final String? hintText;
  final IconData? icono;
  final bool obscureText;
  final TextInputType keyboardType;
  final String? Function(String?)? validator;

  const CampoTexto({
    super.key,
    required this.controller,
    required this.label,
    this.hintText,
    this.icono,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      keyboardType: keyboardType,
      validator: validator,
      decoration: InputDecoration(
        labelText: label,
        hintText: hintText,
        prefixIcon: icono != null ? Icon(icono) : null,
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        filled: true,
        fillColor: Colors.grey.shade50,
      ),
    );
  }
}
