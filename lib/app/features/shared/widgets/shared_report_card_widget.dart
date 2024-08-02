import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class SharedReportCardWidget extends StatelessWidget {
  const SharedReportCardWidget({super.key});

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
              const Icon(
                Ionicons.document_attach,
                size: 35,
              ),
              // Espaço vertical entre a imagem e o texto
              Text(
                "Gerar",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
              Text(
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
