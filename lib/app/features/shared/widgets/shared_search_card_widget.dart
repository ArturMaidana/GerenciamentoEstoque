import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class SharedCardSearchWidget extends StatelessWidget {
  const SharedCardSearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 5,
        color: const Color.fromARGB(255, 255, 255, 255),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Container(
          width: 120,
          height: 120,
          padding: const EdgeInsets.all(20),
          child: const Column(
            children: <Widget>[
              Icon(
                Ionicons.search_circle_sharp,
                size: 35,
              ),
              // Espaço vertical entre a imagem e o texto
              Text(
                "Consultar",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
              Text(
                "Produto",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
