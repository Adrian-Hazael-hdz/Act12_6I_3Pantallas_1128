import 'package:flutter/material.dart';
import 'widgets/pagina1.dart';
import 'widgets/pagina2.dart';
import 'widgets/pagina3.dart';

void main() {
  runApp(const PChopApp());
}

class PChopApp extends StatelessWidget {
  const PChopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PChop Store',
      initialRoute: '/',
      routes: {
        '/': (context) => const Pagina1(),
        '/productos': (context) => const Pagina2(),
        '/carrito': (context) => const Pagina3(),
      },
    );
  }
}

class MenuLateralDerecho extends StatelessWidget {
  const MenuLateralDerecho({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: Color(0xFFB39DDB)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("PChop Menu", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                SizedBox(height: 10),
                Text("Adrian Hernandez 6I", style: TextStyle(fontSize: 16)),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text("Inicio"),
            onTap: () => Navigator.pushNamed(context, '/'),
          ),
          ListTile(
            leading: const Icon(Icons.inventory_2),
            title: const Text("Productos"),
            onTap: () => Navigator.pushNamed(context, '/productos'),
          ),
          ListTile(
            leading: const Icon(Icons.shopping_cart),
            title: const Text("Carrito"),
            onTap: () => Navigator.pushNamed(context, '/carrito'),
          ),
        ],
      ),
    );
  }
}