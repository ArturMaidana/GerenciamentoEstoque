import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class SharedProductCardWidget extends StatelessWidget {
  const SharedProductCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      Card(
        elevation: 5,
        color: const Color.fromARGB(255, 255, 255, 255),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Container(
          width: 65,
          height: 55,
          padding: const EdgeInsets.all(10),
          child: const Column(
            children: <Widget>[
              Icon(
                Ionicons.cart_sharp,
                size: 30,
              ),
              // Espaço vertical entre a imagem e o texto
            ],
          ),
        ),
      ),
      Card(
        elevation: 5,
        color: const Color.fromARGB(255, 255, 255, 255),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Container(
          width: 65,
          height: 55,
          padding: const EdgeInsets.all(10),
          child: const Column(
            children: <Widget>[
              Icon(
                Ionicons.document_attach_sharp,
                size: 30,
              ),
              // Espaço vertical entre a imagem e o texto
            ],
          ),
        ),
      ),
      Card(
        elevation: 5,
        color: const Color.fromARGB(255, 255, 255, 255),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Container(
          width: 65,
          height: 55,
          padding: const EdgeInsets.all(10),
          child: const Column(
            children: <Widget>[
              Icon(
                Ionicons.logo_wechat,
                size: 30,
              ),
              // Espaço vertical entre a imagem e o texto
            ],
          ),
        ),
      ),
      Card(
        elevation: 5,
        color: const Color.fromARGB(255, 255, 255, 255),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Container(
          width: 65,
          height: 55,
          padding: const EdgeInsets.all(10),
          child: const Column(
            children: <Widget>[
              Icon(
                Ionicons.calendar,
                size: 30,
              ),
              // Espaço vertical entre a imagem e o texto
            ],
          ),
        ),
      ),
      Card(
        elevation: 5,
        color: const Color.fromARGB(255, 255, 255, 255),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Container(
          width: 65,
          height: 55,
          padding: const EdgeInsets.all(10),
          child: const Column(
            children: <Widget>[
              Icon(
                Ionicons.settings,
                size: 30,
              ),
              // Espaço vertical entre a imagem e o texto
            ],
          ),
        ),
      ),
    ]);
  }
}
