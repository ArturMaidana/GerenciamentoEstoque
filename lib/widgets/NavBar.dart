import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 5,
        color: Color.fromARGB(255, 31, 31, 36),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Container(
          width: 350,
          height: 60,
          padding: const EdgeInsets.all(10),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/home');
                  },
                  child: Image.asset(
                    'assets/image/Home_icon.png', // Caminho da sua imagem
                    width: 50,
                    height: 50,
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/services');
                  },
                  child: Image.asset(
                    'assets/image/Dashboard_icon.png', // Caminho da sua imagem
                    width: 50,
                    height: 50,
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/profile');
                  },
                  child: Image.asset(
                    'assets/image/Profile_icon.png', // Caminho da sua imagem
                    width: 50,
                    height: 50,
                  ),
                ),
              ]),
        ));
  }
}
