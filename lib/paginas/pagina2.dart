import 'package:flutter/material.dart';
import '../main.dart';

class Pagina2 extends StatelessWidget {
  const Pagina2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Nuestros Productos')),
      drawer: const MiDrawer(),
      body: Center(
        child: Image.network(
          'https://raw.githubusercontent.com/AndressSandoval/imagenes/refs/heads/main/bateria.jpg',
          width: 200, height: 200,
        ),
      ),
    );
  }
}