import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:lits_adventures_test/providers/providers.dart';
import 'package:lits_adventures_test/tools/tools.dart';
import 'package:lits_adventures_test/widgets/widgets.dart';

class ExerciseOneScreen extends StatelessWidget {
  const ExerciseOneScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    /// Instanciando el provider del ejercicio 1
    return ListenableProvider(
      create: (_) => ExerciseOneProvider(),
      child: Builder(
        builder: (context) {
          final provider = Provider.of<ExerciseOneProvider>(context);
          return _ProjectBody(provider: provider);
        },
      ),
    );
  }
}

///Estructura principal del ejercicio 1
class _ProjectBody extends StatelessWidget {
  final ExerciseOneProvider provider;
  const _ProjectBody({
    Key? key,
    required this.provider,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ProjectStructureWidget(
      appBarText: 'Ejercicio 1',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: size.height * .05),
          Text(
            'Programa para calcular el perímetro y área de un circulo.',
            style: AppTypography.text16w500,
          ),
          SizedBox(height: size.height * .02),
          CustomTextFormWidget(
            icon: Icons.calculate,
            keyboardType: TextInputType.number,
            helperText: 'El valor debe ser numérico',
            labelText: 'Introduzca el diámetro del circulo en cm',
            onChanged: (value) => value.isEmpty
                ? provider.diameter = 0.0
                : provider.diameter = double.parse(value),
            validator: (value) => RegularExpressions.requiredField(value),
          ),
          SizedBox(height: size.height * .05),
          MainButtonWidget(
            buttonText: 'Calcular',
            onPressed: provider.diameter == 0.0
                ? null
                : () {
                    provider.showResult = true;
                    provider.calculate();
                  },
          ),
          SizedBox(height: size.height * .05),
          provider.showResult
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'El perímetro es: ${provider.perimeter.toStringAsFixed(2)} cm',
                      style: AppTypography.text16w500,
                    ),
                    SizedBox(height: size.height * .03),
                    Text(
                      'El área es: ${provider.area.toStringAsFixed(2)} cm2',
                      style: AppTypography.text16w500,
                    ),
                  ],
                )
              : Container(),
          SizedBox(height: size.height * .2),
        ],
      ),
    );
  }
}
