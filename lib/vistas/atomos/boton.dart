import 'package:flutter/material.dart';

// Átomo 2: Botón de acción reutilizable
class Boton extends StatelessWidget {
  final String texto;
  final VoidCallback alPresionar;
  final Color? colorFondo;
  final Color? colorTexto;
  final IconData? icono;

  const Boton({
    super.key,
    required this.texto,
    required this.alPresionar,
    this.colorFondo,
    this.colorTexto,
    this.icono,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: colorFondo ?? Theme.of(context).primaryColor,
        foregroundColor: colorTexto ?? Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        elevation: 2,
      ),
      onPressed: alPresionar,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (icono != null) ...[
            Icon(icono, size: 20),
            const SizedBox(width: 8),
          ],
          Text(
            texto,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
