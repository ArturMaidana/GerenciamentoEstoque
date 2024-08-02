import 'package:flutter/material.dart';
import 'package:stock_management/app/features/shared/widgets/shared_custom_card_widget.dart';
import 'package:stock_management/app/features/shared/widgets/shared_product_card_widget.dart';

import 'package:stock_management/app/features/shared/widgets/shared_navbar_widget.dart';
import 'package:stock_management/app/features/shared/widgets/shared_search_widget.dart';
import 'package:stock_management/app/features/home/ui/widgets/home_topbar_widget.dart';
// ... other imports

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
            const Padding(
                padding: EdgeInsets.all(20), child: HomeTopBarWidget()),
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
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    const SharedSearchWidget(),
                    const SharedCustomCardWidget(),
                    const SharedProductCardWidget(),
                    const SizedBox(height: 10),
                    Container(
                      alignment: Alignment.bottomLeft,
                      child: const Text(
                        '  Produtos Especiais',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        // Cardproduto2(),
                        // Cardproduto3(),
                        // Cardproduto2()
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SharedNavbarWidget(
                      onItemSelected: (int) {},
                    ),
                  ],
                ),
              ),
            )),
          ],
        ),
      ),
    );
  }
}
