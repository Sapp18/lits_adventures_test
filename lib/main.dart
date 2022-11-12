import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:lits_adventures_test/providers/providers.dart';
import 'package:lits_adventures_test/routes/routes.dart';
import 'package:lits_adventures_test/share_preferences/preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Preferences.init();
  runApp(
    ListenableProvider(
      create: (_) => ThemeProvider(isDarkmode: Preferences.isDarkmode),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: AppRoutes.routes,
      title: 'Lits Adventures Test',
      initialRoute: AppRoutes.homeScreen,
      theme: Provider.of<ThemeProvider>(context).currentTheme,
    );
  }
}
