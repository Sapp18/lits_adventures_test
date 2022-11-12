import 'package:flutter/material.dart';
import 'package:lits_adventures_test/routes/routes.dart';
import 'package:lits_adventures_test/tools/tools.dart';

/// Estructura principal del ejercicio 3
class ExerciseThreeScreen extends StatelessWidget {
  const ExerciseThreeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
        title: const Text('Ejercicio 3'),
      ),
      /// Se ocupó un ListView.builder para listar el widget personalizado
      body: ListView.builder(
        itemCount: 100,
        itemBuilder: (_, index) => GestureDetector(
          /// Navegar hacia la otra pantalla, pasando como parametro en index
          onTap: () => Navigator.pushNamed(
            context,
            AppRoutes.valueScreen,
            arguments: {
              'value': index + 1,
            },
          ),
          /// Creación del widget personalizado
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[350],
                borderRadius: const BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              child: ListTile(
                title: Text(
                  (index + 1).toString(),
                  style: AppTypography.text18w500,
                  textAlign: TextAlign.center,
                ),
                leading: const Icon(
                  Icons.do_disturb_on_outlined,
                  color: Colors.blueAccent,
                ),
                trailing: const Icon(
                  Icons.add_outlined,
                  color: Colors.blueAccent,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
