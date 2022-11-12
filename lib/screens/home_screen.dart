/// Pantalla principal de la app
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:lits_adventures_test/providers/providers.dart';
import 'package:lits_adventures_test/routes/routes.dart';
import 'package:lits_adventures_test/share_preferences/preferences.dart';
import 'package:lits_adventures_test/widgets/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
        title: const Text('Lits Adventures Test'),
        /// Switch para cambiar de tema a la app
        actions: [
          Switch.adaptive(
            value: Preferences.isDarkmode,
            onChanged: (value) {
              Preferences.isDarkmode = value;
              /// Instanciando el provider del tema
              final themeProvider =
                  Provider.of<ThemeProvider>(context, listen: false);
              value
                  ? themeProvider.setDarkMode()
                  : themeProvider.setLightMode();
              setState(() {});
            },
          ),
        ],
      ),
      /// Botones personalizados para navegar a las pantallas de los ejercicios
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          MainButtonWidget(
            buttonText: 'Ejercicio 1',
            onPressed: () => Navigator.pushNamed(
              context,
              AppRoutes.exerciseOneScreen,
            ),
          ),
          MainButtonWidget(
            buttonText: 'Ejercicio 2',
            onPressed: () => Navigator.pushNamed(
              context,
              AppRoutes.exerciseTwoScreen,
            ),
          ),
          MainButtonWidget(
            buttonText: 'Ejercicio 3',
            onPressed: () => Navigator.pushNamed(
              context,
              AppRoutes.exerciseThreeScreen,
            ),
          ),
        ],
      ),
    );
  }
}
