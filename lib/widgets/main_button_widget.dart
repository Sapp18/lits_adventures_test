import 'package:flutter/material.dart';
/// Widget personalizado para el botón.
import 'package:lits_adventures_test/tools/app_typography.dart';

class MainButtonWidget extends StatelessWidget {
  final void Function()? onPressed;
  final String buttonText;
  const MainButtonWidget({super.key, this.onPressed, required this.buttonText});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          primary: Colors.blueAccent,
          textStyle: AppTypography.text16w500,
        ),
        onPressed: onPressed,
        child: Text(buttonText),
      ),
    );
  }
}
