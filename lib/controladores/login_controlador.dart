import '../modelos/login_modelo.dart';

// Controlador básico que maneja la lógica de validación y datos del login
class LoginControlador {
  // Instancia del modelo para guardar la información
  final LoginModelo datos = LoginModelo();

  // Validación básica del campo de correo electrónico
  String? validarCorreo(String? valor) {
    if (valor == null || valor.trim().isEmpty) {
      return 'Por favor ingresa tu correo electrónico';
    }
    if (!valor.contains('@') || !valor.contains('.')) {
      return 'Ingresa un correo electrónico válido (ejemplo: usuario@correo.com)';
    }
    return null;
  }

  // Validación básica del campo de contraseña
  String? validarContrasena(String? valor) {
    if (valor == null || valor.trim().isEmpty) {
      return 'Por favor ingresa tu contraseña';
    }
    if (valor.length < 4) {
      return 'La contraseña debe tener al menos 4 caracteres';
    }
    return null;
  }

  // Simulación de inicio de sesión
  bool iniciarSesion(String correo, String contrasena) {
    datos.correo = correo;
    datos.contrasena = contrasena;
    return true;
  }

  // Limpiar los datos almacenados
  void limpiar() {
    datos.correo = '';
    datos.contrasena = '';
  }
}
