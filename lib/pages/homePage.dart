import 'package:flutter/material.dart';
import 'package:stock_management/widgets/CardCilindro.dart';
import 'package:stock_management/widgets/CardProduto2.dart';
import 'package:stock_management/widgets/CardProduto3.dart';
import 'package:stock_management/widgets/CardProdutos.dart';
import 'package:stock_management/widgets/CardRelatorios.dart';
import 'package:stock_management/widgets/CardSearch.dart';
import 'package:stock_management/widgets/NavBar.dart';
import 'package:stock_management/widgets/custom_Card.dart';
import 'package:stock_management/widgets/custom_topBar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
            const SizedBox(height: 40),
            const Padding(padding: EdgeInsets.all(20), child: CustomTopbar()),
            const SizedBox(height: 20),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60),
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
                      children: [
                        CardProdutos(),
                        CardSearh(),
                        CardRelatorios(),
                      ],
                    ),
                    const SizedBox(height: 10),
                    const CustomCard(),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Cardcilindro(),
                        Cardproduto2(),
                        Cardproduto3(),
                      ],
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    Center(child: Navbar()),

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
