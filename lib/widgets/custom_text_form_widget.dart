import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lits_adventures_test/tools/app_typography.dart';

class CustomTextFormWidget extends StatelessWidget {
  final bool autofocus;
  final FocusNode? focusNode;
  final IconData? icon;
  final IconData? prefixIcon;
  final List<TextInputFormatter>? inputFormatters;
  final String? Function(String?)? validator;
  final String? helperText;
  final String? hintText;
  final String? initialValue;
  final String? labelText;
  final TextCapitalization textCapitalization;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final void Function()? onTap;
  final void Function(String)? onChanged;
  final Widget? suffixIcon;

  const CustomTextFormWidget({
    Key? key,
    this.autofocus = false,
    this.controller,
    this.focusNode,
    this.helperText,
    this.hintText,
    this.icon,
    this.initialValue,
    this.inputFormatters,
    this.keyboardType,
    this.labelText,
    this.onChanged,
    this.onTap,
    this.prefixIcon,
    this.suffixIcon,
    this.textCapitalization = TextCapitalization.none,
    this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: autofocus,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      controller: controller,
      focusNode: focusNode,
      initialValue: initialValue,
      inputFormatters: inputFormatters,
      keyboardType: keyboardType,
      onChanged: onChanged,
      onTap: onTap,
      style: AppTypography.text16w500,
      textCapitalization: textCapitalization,
      validator: validator,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        helperText: helperText,
        prefixIcon: prefixIcon == null ? null : Icon(prefixIcon),
        suffixIcon: suffixIcon,
        icon: icon == null ? null : Icon(icon),
      ),
    );
  }
}
