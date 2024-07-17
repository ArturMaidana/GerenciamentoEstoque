import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 10,
        color: Colors.white,
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
                IconButton(
                    onPressed: () {}, icon: FaIcon(FontAwesomeIcons.home)),
                InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/home');
                    },
                    child: const Icon(Icons.home)),
                InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/services');
                    },
                    child: const Icon(Icons.search)),
                InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/profile');
                    },
                    child: const Icon(Icons.person)),
              ]),
        ));
  }
}
