import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class SharedSearchWidget extends StatelessWidget {
  const SharedSearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextField(
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(vertical: 15.0),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.0),
              borderSide: const BorderSide(width: 0.8),
            ),
            hintText: 'Busca...',
            prefixIcon: const Icon(Ionicons.search),
            suffixIcon: const Icon(Ionicons.filter)),
      ),
    );
  }
}
