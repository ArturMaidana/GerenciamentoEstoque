import 'package:flutter/material.dart';

class CardRelatorios extends StatelessWidget {
  const CardRelatorios({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 5,
        color: Color.fromARGB(255, 255, 255, 255),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Container(
          width: 120,
          height: 120,
          padding: const EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              Image.asset(
                'assets/image/Relatorios_icon.png', // Caminho da sua imagem
                width: 35,
                height: 35,
              ),
              // Espaço vertical entre a imagem e o texto
              const Text(
                "Gerar",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
              const Text(
                "Relatório",
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
