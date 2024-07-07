import 'package:flutter/material.dart';

class CustomTopbar extends StatelessWidget {
  const CustomTopbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          width: 70,
          height: 70,
          child: Image.asset('assets/image/user.png'),
        ),
        SizedBox(
          height: 10,
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Bem-vindo(a)",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w100),
            ),
            Text(
              "Samuel Kaio",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        SizedBox(
          width: 120,
        ),
        Icon(
          Icons.notifications,
          color: Colors.white,
        ),
      ],
    );
  }
}
