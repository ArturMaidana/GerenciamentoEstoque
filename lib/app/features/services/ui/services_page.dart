import 'package:flutter/material.dart';

class ServicesPage extends StatelessWidget {
  const ServicesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Serviços'),
        backgroundColor: const Color.fromARGB(255, 14, 61, 116),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: GridView.count(
          crossAxisCount: 2, // Número de colunas
          crossAxisSpacing: 20.0, // Espaçamento horizontal entre os itens
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
