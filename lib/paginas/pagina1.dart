import 'package:flutter/material.dart';
import '../main.dart'; // Importamos para usar el Drawer

class Pagina1 extends StatelessWidget {
  const Pagina1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Musicman - Inicio')),
      drawer: const MiDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Bienvenidos a la Tienda', style: TextStyle(fontSize: 20)),
            const SizedBox(height: 20),
            Image.network(
              'https://raw.githubusercontent.com/AndressSandoval/imagenes/refs/heads/main/unnamed-removebg-preview.png',
              width: 200, height: 200,
            ),
          ],
        ),
      ),
    );
  }
}