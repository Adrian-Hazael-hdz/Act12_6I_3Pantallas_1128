import 'package:flutter/material.dart';
import '../main.dart';

class Pagina1 extends StatelessWidget {
  const Pagina1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3E5F5),
      endDrawer: const MenuLateralDerecho(),
      appBar: AppBar(
        automaticallyImplyLeading: false, // Quita el menú de la izquierda
        backgroundColor: const Color(0xFFB39DDB),
        title: const Text("PChop", style: TextStyle(fontWeight: FontWeight.bold)),
        actions: [
          const Icon(Icons.search, color: Colors.black),
          Builder(builder: (context) => IconButton(
            icon: const Icon(Icons.menu, color: Colors.black),
            onPressed: () => Scaffold.of(context).openEndDrawer(),
          )),
        ],
      ),
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 600),
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const Text("BIENVENIDO!!!", style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Color(0xFF5E35B1))),
              const Text("Productos destacados", style: TextStyle(fontSize: 18, color: Colors.black54)),
              const SizedBox(height: 20),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 15,
                  crossAxisSpacing: 15,
                  children: [
                    _cuadroDestacado("\$1,500", "https://raw.githubusercontent.com/Adrian-Hazael-hdz/Act12_6I_3Pantallas_1128/refs/heads/main/producto2.jpg"),
                    _cuadroDestacado("\$25,000", "https://raw.githubusercontent.com/Adrian-Hazael-hdz/Act12_6I_3Pantallas_1128/refs/heads/main/producto1.jpg"),
                    _cuadroDestacado("\$10,000", "https://raw.githubusercontent.com/Adrian-Hazael-hdz/Act12_6I_3Pantallas_1128/refs/heads/main/producto3.jpg"),
                    _cuadroDestacado("\$2,000", "https://raw.githubusercontent.com/Adrian-Hazael-hdz/Act12_6I_3Pantallas_1128/refs/heads/main/producto4.jpg"),
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, '/productos'),
                child: const Text("Ir a Productos"),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _cuadroDestacado(String precio, String url) {
    return Container(
      decoration: BoxDecoration(border: Border.all(color: Colors.black, width: 2)),
      child: Column(
        children: [
          Expanded(child: Image.network(url, fit: BoxFit.cover, width: double.infinity)),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(8),
            decoration: const BoxDecoration(border: Border(top: BorderSide(color: Colors.black))),
            child: Text(precio, textAlign: TextAlign.center, style: const TextStyle(fontWeight: FontWeight.bold)),
          )
        ],
      ),
    );
  }
}