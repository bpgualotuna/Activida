import 'package:flutter/material.dart';
import '../../controladores/login_controlador.dart';
import '../atomos/espacio.dart';
import '../moleculas/campo_correo.dart';
import '../moleculas/campo_password.dart';
import '../moleculas/encabezado_login.dart';
import '../moleculas/botones_login.dart';

// Organismo: FormularioLogin
// Reúne las moléculas para crear la estructura funcional completa del formulario
class FormularioLogin extends StatefulWidget {
  const FormularioLogin({super.key});

  @override
  State<FormularioLogin> createState() => _FormularioLoginState();
}

class _FormularioLoginState extends State<FormularioLogin> {
  // Clave global para validar el formulario
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  // Controladores de texto para capturar los datos
  final TextEditingController _correoController = TextEditingController();
  final TextEditingController _contrasenaController = TextEditingController();

  // Instancia del controlador de lógica
  final LoginControlador _controlador = LoginControlador();

  @override
  void dispose() {
    _correoController.dispose();
    _contrasenaController.dispose();
    super.dispose();
  }

  // Acción para iniciar sesión
  void _iniciarSesion() {
    // Valida que ambos campos tengan información y cumplan las reglas
    if (_formKey.currentState!.validate()) {
      final correo = _correoController.text.trim();
      final contrasena = _contrasenaController.text;

      _controlador.iniciarSesion(correo, contrasena);

      // Muestra mensaje de confirmación al usuario
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('¡Inicio de sesión exitoso! Bienvenido: $correo'),
          backgroundColor: Colors.green.shade700,
          behavior: SnackBarBehavior.floating,
          duration: const Duration(seconds: 3),
        ),
      );
    }
  }

  // Acción para limpiar los datos ingresados
  void _limpiarDatos() {
    // Limpia los campos de texto
    _correoController.clear();
    _contrasenaController.clear();

    // Resetea los mensajes de error del formulario
    _formKey.currentState?.reset();

    // Limpia los datos en el controlador
    _controlador.limpiar();

    // Muestra aviso de limpieza
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Los campos han sido limpiados'),
        backgroundColor: Colors.blueGrey,
        behavior: SnackBarBehavior.floating,
        duration: const Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Molécula 3: Encabezado visual
          const EncabezadoLogin(),

          const Espacio(alto: 24),

          // Molécula 1: Campo de Correo Electrónico
          CampoCorreo(
            controller: _correoController,
            validator: _controlador.validarCorreo,
          ),

          const Espacio(alto: 16),

          // Molécula 2: Campo de Contraseña
          CampoPassword(
            controller: _contrasenaController,
            validator: _controlador.validarContrasena,
          ),

          const Espacio(alto: 24),

          // Molécula 4: Botones de Iniciar Sesión y Limpiar
          BotonesLogin(
            onIniciarSesion: _iniciarSesion,
            onLimpiar: _limpiarDatos,
          ),
        ],
      ),
    );
  }
}
