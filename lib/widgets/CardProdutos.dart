import 'package:flutter/material.dart';
import 'package:iconoir_flutter/iconoir_flutter.dart';

class CardProdutos extends StatelessWidget {
  const CardProdutos({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 5,
        color: const Color.fromARGB(255, 255, 255, 255),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Container(
          width: 120,
          height: 120,
          padding: const EdgeInsets.all(20),
          child: const Iconoir(),
        ),
      ),
    );
  }
}
