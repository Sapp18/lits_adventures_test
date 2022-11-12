import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:lits_adventures_test/providers/providers.dart';
import 'package:lits_adventures_test/tools/tools.dart';
import 'package:lits_adventures_test/widgets/widgets.dart';

class ExerciseTwoScreen extends StatelessWidget {
  const ExerciseTwoScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    /// Instanciando el provider del ejercicio 2
    return ListenableProvider(
      create: (_) => ExerciseTwoProvider(),
      child: Builder(
        builder: (context) {
          final provider = Provider.of<ExerciseTwoProvider>(context);
          return ProjectStructureWidget(
            appBarText: 'Ejercicio 2',
            child: _ProjectBody(provider: provider),
          );
        },
      ),
    );
  }
}

///Estructura principal del ejercicio 2
class _ProjectBody extends StatelessWidget {
  final ExerciseTwoProvider provider;
  const _ProjectBody({
    Key? key,
    required this.provider,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: size.height * .05),
        Text(
          'Programa para calcular el número de horas trabajadas a la semana.',
          style: AppTypography.text16w500,
        ),
        SizedBox(height: size.height * .02),
        CustomTextFormWidget(
          icon: Icons.calculate,
          keyboardType: TextInputType.number,
          helperText: 'El valor debe ser numérico',
          labelText: 'Introduzca el número de horas trabajadas',
          onChanged: (value) => value.isEmpty
              ? provider.hoursWorked = 0.0
              : provider.hoursWorked = double.parse(value),
          validator: (value) => RegularExpressions.requiredField(value),
        ),
        SizedBox(height: size.height * .05),
        MainButtonWidget(
          buttonText: 'Calcular',
          onPressed: provider.hoursWorked == 0.0
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
                    provider.hoursWorked == 1
                        ? 'Trabajaste un total de: ${provider.hoursWorked.toInt()} hr'
                        : 'Trabajaste un total de: ${provider.hoursWorked} hrs',
                    style: AppTypography.text16w500,
                  ),
                  SizedBox(height: size.height * .03),
                  Text(
                    'Tu salario es de: \$${provider.salary}',
                    style: AppTypography.text16w500,
                  ),
                ],
              )
            : Container(),
        SizedBox(height: size.height * .2),
      ],
    );
  }
}
