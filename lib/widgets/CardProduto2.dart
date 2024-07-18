import 'package:flutter/material.dart';

class Cardproduto2 extends StatelessWidget {
  const Cardproduto2({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      color: Color.fromARGB(255, 255, 255, 255),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      child: Container(
        width: 120,
        height: 160,
        padding: const EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Image.asset(
              'assets/image/Produto2.png', // Caminho da sua imagem
              width: 80,
              height: 80,
            ),
            // Espaço vertical entre a imagem e o texto
            const Text(
              "Cilindro freio de roda 2.0/2.5",
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w500,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ),
            SizedBox(
              height: 3,
            ),
            const Text(
              "BRL.609,00",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
