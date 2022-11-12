class RegularExpressions {
  static String? requiredField(String? value) {
    if (value == null || value == '0') {
      return 'Campo obligatorio';
    }
    return value.isEmpty ? 'Campo obligatorio' : null;
  }
}
