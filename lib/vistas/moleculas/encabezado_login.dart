import 'package:flutter/material.dart';
import '../atomos/icono_login.dart';
import '../atomos/texto_titulo.dart';
import '../atomos/espacio.dart';

// Molécula 3: Encabezado visual del login (Ícono + Títulos)
class EncabezadoLogin extends StatelessWidget {
  final String titulo;
  final String? subtitulo;

  const EncabezadoLogin({
    super.key,
    this.titulo = 'Iniciar Sesión',
    this.subtitulo = 'Ingresa tus credenciales para acceder',
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const IconoLogin(
          icono: Icons.lock_person_rounded,
          tamano: 75,
        ),
        const Espacio(alto: 12),
        TextoTitulo(
          texto: titulo,
          tamano: 24,
          peso: FontWeight.bold,
        ),
        if (subtitulo != null) ...[
          const Espacio(alto: 6),
          TextoTitulo(
            texto: subtitulo!,
            tamano: 14,
            peso: FontWeight.normal,
            color: Colors.grey.shade600,
          ),
        ],
      ],
    );
  }
}
