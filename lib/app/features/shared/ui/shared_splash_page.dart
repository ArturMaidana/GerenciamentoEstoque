import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:stock_management/app/core/utils/consts/path_of_assets.dart';

class SharedSplashPage extends StatefulWidget {
  const SharedSplashPage({super.key});

  @override
  State<SharedSplashPage> createState() => _SharedSplashPageState();
}

class _SharedSplashPageState extends State<SharedSplashPage> {
  @override
  void initState() {
    startSplash();
    super.initState();
  }

  startSplash() async {
    context.goNamed("/services");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('A Splash Screen'),
      ),
      body: SizedBox.expand(
        child: Center(
          child: Image.asset(
            PathOfAssets.CILINDRO,
          ),
        ),
      ),
    );
  }
}
