import 'package:flutter/material.dart';
import '../atomos/boton.dart';
import '../atomos/espacio.dart';

// Molécula 4: Grupo de botones para el login (Iniciar Sesión y Limpiar)
class BotonesLogin extends StatelessWidget {
  final VoidCallback onIniciarSesion;
  final VoidCallback onLimpiar;

  const BotonesLogin({
    super.key,
    required this.onIniciarSesion,
    required this.onLimpiar,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Boton(
          texto: 'Iniciar Sesión',
          icono: Icons.login,
          colorFondo: Colors.blue.shade700,
          alPresionar: onIniciarSesion,
        ),
        const Espacio(alto: 10),
        Boton(
          texto: 'Limpiar Datos',
          icono: Icons.cleaning_services_outlined,
          colorFondo: Colors.grey.shade600,
          alPresionar: onLimpiar,
        ),
      ],
    );
  }
}
