import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: TextField(
        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 15.0),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.0),
              borderSide: BorderSide(width: 0.8),
            ),
            hintText: 'Busca...',
            prefixIcon: Icon(Ionicons.search),
            suffixIcon: Icon(Ionicons.filter)),
      ),
    );
  }
}
