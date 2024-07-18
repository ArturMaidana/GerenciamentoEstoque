import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ionicons/ionicons.dart';

class CustomTopbar extends StatelessWidget {
  const CustomTopbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          width: 50,
          height: 50,
          child: Image.asset('assets/image/user.png'),
        ),
        const SizedBox(
          height: 10,
          width: 10,
        ),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Bem-vindom, Krish",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "Cuiabá, Mato Grosso",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w100),
            ),
          ],
        ),
        const SizedBox(
          width: 66,
        ),
        Row(
          children: [
            Card(
              color: const Color.fromARGB(255, 230, 244, 248),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: const SizedBox(
                height: 35,
                width: 35,
                child: Icon(
                  Iconsax.notification,
                  size: 25,
                ),
              ),
            ),
            Card(
              color: const Color.fromARGB(255, 230, 244, 248),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: const SizedBox(
                height: 35,
                width: 35,
                child: Icon(
                  Ionicons.menu_outline,
                  size: 25,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
