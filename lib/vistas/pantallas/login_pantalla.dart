import 'package:flutter/material.dart';
import '../organismos/formulario_login.dart';

// Pantalla: LoginPantalla
// Pantalla principal que integra el organismo FormularioLogin
class LoginPantalla extends StatelessWidget {
  const LoginPantalla({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade50,
      appBar: AppBar(
        title: const Text('Inicio de Sesión'),
        centerTitle: true,
        backgroundColor: Colors.blue.shade700,
        foregroundColor: Colors.white,
        elevation: 1,
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20.0),
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 420),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.0),
              ),
              elevation: 4,
              color: Colors.white,
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 32.0),
                child: FormularioLogin(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
