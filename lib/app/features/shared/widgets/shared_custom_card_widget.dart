import 'package:flutter/material.dart';

class SharedCustomCardWidget extends StatelessWidget {
  const SharedCustomCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 10,
        color: Color.fromARGB(255, 5, 64, 172),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Container(
          width: 380,
          height: 150,
          padding: const EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              // Coluna para os textos
              const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Controle seu",
                    style: TextStyle(
                      fontSize: 30, // Tamanho maior para o texto
                      fontWeight: FontWeight.w100,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "Estoque",
                    style: const TextStyle(
                      fontSize: 35, // Tamanho maior para "Estoque"
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(
                          255, 255, 255, 255), // Cor diferente para "Estoque"
                    ),
                  ),
                ],
              ),
              // Imagem ao lado direito
              Image.asset(
                'assets/image/estoque_icon.png', // Altere para o caminho da sua imagem
                width: 130,
                height: 130,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
