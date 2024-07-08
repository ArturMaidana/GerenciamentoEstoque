import 'package:flutter/material.dart';
import 'package:stock_management/widgets/CardProdutos.dart';
import 'package:stock_management/widgets/CardRelatorios.dart';
import 'package:stock_management/widgets/CardSearch.dart';
import 'package:stock_management/widgets/NavBar.dart'; // Certifique-se de que este widget está implementado corretamente
import 'package:stock_management/widgets/Services_widget.dart';

class Services extends StatelessWidget {
  const Services({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: const Color.fromARGB(255, 5, 64, 172),
          flexibleSpace: Container(
            alignment: Alignment.bottomCenter,
            padding: const EdgeInsets.only(bottom: 20),
            child: const Text(
              "Serviços",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 23,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          // Expanded que envolve a GridView para ocupar o máximo de espaço disponível
          Expanded(
            child: Container(
              decoration: const BoxDecoration(color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: GridView.count(
                  crossAxisCount: 2, // Número de colunas
                  crossAxisSpacing:
                      20.0, // Espaçamento horizontal entre os itens
                  mainAxisSpacing: 20.0, // Espaçamento vertical entre os itens
                  children: const [
                    ServiceIcon(
                      imagePath: 'assets/image/Produtos_icon.png',
                      label: 'Produtos',
                    ),
                    ServiceIcon(
                      imagePath: 'assets/image/Solicitacoes_icon.png',
                      label: 'Solicitações',
                    ),
                    ServiceIcon(
                      imagePath: 'assets/image/Relatorios_icon.png',
                      label: 'Relatórios',
                    ),
                    ServiceIcon(
                      imagePath: 'assets/image/Equipe_icon.png',
                      label: 'Minha Equipe',
                    ),
                    ServiceIcon(
                      imagePath: 'assets/image/Agenda_icon.png',
                      label: 'Agenda ',
                    ),
                    ServiceIcon(
                      imagePath: 'assets/image/config_icon.png',
                      label: 'Configurações',
                    ),
                  ],
                ),
              ),
            ),
          ),
          // Adicione a Navbar abaixo dos ícones, mas antes do fundo da tela
          const Padding(
            padding: EdgeInsets.all(8.0), // Ajusta a margem da Navbar
            child: Navbar(), // Adicione a Navbar aqui
          ),
        ],
      ),
    );
  }
}

class ServiceIcon extends StatelessWidget {
  final String imagePath;
  final String label;

  const ServiceIcon({required this.imagePath, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          imagePath,
          width: 55,
          height: 55,
        ),
        const SizedBox(height: 10), // Espaço entre a imagem e o texto
        Text(
          label,
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 0, 0, 0),
          ),
        ),
      ],
    );
  }
}
