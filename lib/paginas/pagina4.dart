import 'package:flutter/material.dart';
import '../main.dart';

class Pagina4 extends StatelessWidget {
  const Pagina4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Guitarras de la Tienda')),
      drawer: const MiDrawer(),
      body: Center(
        child: Image.network(
          'https://raw.githubusercontent.com/AndressSandoval/imagenes/refs/heads/main/13301316_800.jpg',
          width: 200, height: 200,
        ),
      ),
    );
  }
}