import 'package:flutter/material.dart';
import 'package:stock_management/app/core/infraestructure/routes/routing.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 37, 53, 194)),
        useMaterial3: true,
      ),
      routerConfig: router,
    );
  }
}
