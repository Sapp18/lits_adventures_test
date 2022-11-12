import 'package:flutter/material.dart';
import 'package:lits_adventures_test/tools/tools.dart';

class ValueScreen extends StatelessWidget {
  const ValueScreen({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final arg = ModalRoute.of(context)!.settings.arguments as Map;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
        title: const Text('Valor del elemento'),
      ),
      body: Center(
        child: Text(
          arg['value'].toString(),
          style: AppTypography.text150w900,
        ),
      ),
    );
  }
}
