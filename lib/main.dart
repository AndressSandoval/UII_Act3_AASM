import 'package:flutter/material.dart';
import 'paginas/pagina1.dart';
import 'paginas/pagina2.dart';
import 'paginas/pagina3.dart';
import 'paginas/pagina4.dart';

void main() => runApp(const MusicmanApp());

class MusicmanApp extends StatelessWidget {
  const MusicmanApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Musicman Store',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.cyan, // Color turquesa para la AppBar
          titleTextStyle: TextStyle( // Estilo para el texto del título
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      // Definición de Rutas Nombradas
      initialRoute: '/',
      routes: {
        '/': (context) => const Pagina1(),
        '/productos': (context) => const Pagina2(),
        '/empleados': (context) => const Pagina3(),
        '/guitarras': (context) => const Pagina4(),
      },
    );
  }
}

// Drawer Reutilizable para todas las páginas
class MiDrawer extends StatelessWidget {
  const MiDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            decoration: const BoxDecoration(color: Colors.cyan),
            currentAccountPicture: const CircleAvatar(
              backgroundImage: NetworkImage('https://raw.githubusercontent.com/AndressSandoval/imagenes/refs/heads/main/unnamed-removebg-preview.png'),
            ),
            accountName: const Text('Musicman Instrumentos', 
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            accountEmail: const Text(
              'Dirección: Av. Cuerdas 440\nTel: 800-MUSIC\ncorreo: ventas@musicman.com'
            ),
          ),
          _crearItem(context, Icons.home, 'Inicio', '/'),
          _crearItem(context, Icons.shop, 'Productos', '/productos'),
          _crearItem(context, Icons.badge, 'Empleados', '/empleados'),
          _crearItem(context, Icons.music_note, 'Guitarras', '/guitarras'),
        ],
      ),
    );
  }

  Widget _crearItem(BuildContext context, IconData icono, String texto, String ruta) {
    return ListTile(
      leading: Icon(icono, color: Colors.cyan),
      title: Text(texto),
      onTap: () {
        Navigator.pushReplacementNamed(context, ruta);
      },
    );
  }
}
