/// Clase donde se definen y crean las expresiones regulares para la validacion de los inputs.
class RegularExpressions {
  static String? requiredField(String? value) {
    if (value == null || value == '0') {
      return 'Campo obligatorio';
    }
    return value.isEmpty ? 'Campo obligatorio' : null;
  }
}
