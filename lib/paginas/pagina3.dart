import 'package:flutter/material.dart';
import '../main.dart';

class Pagina3 extends StatelessWidget {
  const Pagina3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Staff de Expertos')),
      drawer: const MiDrawer(),
      body: Center(
        child: Image.network(
          'https://raw.githubusercontent.com/AndressSandoval/imagenes-para-flutter-6J-11-2-26/refs/heads/main/persona.jpg',
          width: 200, height: 200,
        ),
      ),
    );
  }
}