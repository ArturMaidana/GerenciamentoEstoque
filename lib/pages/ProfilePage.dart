import 'package:flutter/material.dart';
import 'package:stock_management/widgets/NavBar.dart';

class Profilepage extends StatelessWidget {
  const Profilepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: [
              Color.fromARGB(255, 5, 64, 172),
              Color.fromARGB(255, 25, 110, 221),
              Color.fromARGB(255, 3, 56, 153),
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 80),
            const Padding(
              padding: EdgeInsets.all(10),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(0),
                    topRight: Radius.circular(0),
                  ),
                ),
                child: Column(
                  children: [
                    const SizedBox(
                        height:
                            30), // Ajuste esta altura para mover os cards para cima
                    const Row(
                      mainAxisAlignment: MainAxisAlignment
                          .spaceEvenly, // Espalha os cards uniformemente
                    ),
                    const SizedBox(height: 10),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    ),
                    SizedBox(
                      height: 500,
                    ),

                    Expanded(child: Container()),

                    // Isso empurra os cards para cima
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
