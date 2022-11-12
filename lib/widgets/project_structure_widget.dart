import 'package:flutter/material.dart';

class ProjectStructureWidget extends StatelessWidget {
  final String appBarText;
  final Widget child;
  const ProjectStructureWidget({
    super.key,
    required this.appBarText,
    required this.child,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
        title: Text(appBarText),
      ),
      body: GestureDetector(
        onTap: () {
          FocusScopeNode currentFocus = FocusScope.of(context);
          if (!currentFocus.hasPrimaryFocus) {
            currentFocus.unfocus();
          }
        },
        child: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: child,
            ),
          ),
        ),
      ),
    );
  }
}
