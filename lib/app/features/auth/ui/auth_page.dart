// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:stock_management/app/core/infraestructure/routes/routes.dart';
import 'package:stock_management/app/core/utils/consts/path_of_assets.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  String user = '';
  String password = '';

  Widget _body() {
    return Column(
      children: [
        SingleChildScrollView(
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    child: Image.asset(PathOfAssets.EMPILHADEIRA),
                  ),
                  Container(height: 30),
                  Text(
                    "FABRIS MANUTENÇÕES",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  Container(height: 30),
                  Card(
                    child: TextField(
                      onChanged: (text) {
                        user = text;
                      },
                      obscureText: true,
                      decoration: InputDecoration(
                          labelText: "Usuário", border: OutlineInputBorder()),
                    ),
                  ),
                  Card(
                    child: TextField(
                      onChanged: (text) {
                        password = text;
                      },
                      obscureText: true,
                      decoration: InputDecoration(
                          labelText: "Password", border: OutlineInputBorder()),
                    ),
                  ),
                  SizedBox(height: 15),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          foregroundColor: Color.fromARGB(255, 0, 0, 0),
                          backgroundColor:
                              const Color.fromARGB(255, 255, 255, 255)),
                      onPressed: () {
                        {
                          print("Login Aceito");
                          context.pushReplacementNamed(Routes.HOME);
                        }
                      },
                      child: Container(
                          width: 100,
                          child: Text(
                            "Entrar",
                            textAlign: TextAlign.center,
                          )))
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 24, 88, 172),
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                color: Colors.black.withOpacity(0.3),
              ),
              _body()
            ],
          ),
        ));
  }
}
