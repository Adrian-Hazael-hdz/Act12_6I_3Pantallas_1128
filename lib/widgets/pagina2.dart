import 'package:flutter/material.dart';
import '../main.dart';

class Pagina2 extends StatelessWidget {
  const Pagina2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE8EAF6),
      endDrawer: const MenuLateralDerecho(),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xFFC5CAE9),
        title: const Text("PChop"),
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
          constraints: const BoxConstraints(maxWidth: 800), // Evita que se vea gigante en Web
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              const Text("Productos", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
              Expanded(
                child: GridView.count(
                  crossAxisCount: MediaQuery.of(context).size.width > 600 ? 3 : 2, // 3 columnas en web, 2 en móvil
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: 0.8, // Ajusta la proporción para que no sean gigantes
                  children: [
                    _itemProd("PC", "\$25k", "https://raw.githubusercontent.com/Adrian-Hazael-hdz/Act12_6I_3Pantallas_1128/refs/heads/main/producto1.jpg"),
                    _itemProd("Telefono", "\$10k", "https://raw.githubusercontent.com/Adrian-Hazael-hdz/Act12_6I_3Pantallas_1128/refs/heads/main/producto3.jpg"),
                    _itemProd("Audifonos", "\$1k", "https://raw.githubusercontent.com/Adrian-Hazael-hdz/Act12_6I_3Pantallas_1128/refs/heads/main/producto5.jpg"),
                    _itemProd("Mouse", "\$1,5k", "https://raw.githubusercontent.com/Adrian-Hazael-hdz/Act12_6I_3Pantallas_1128/refs/heads/main/producto2.jpg"),
                    _itemProd("Tecclado", "\$2k", "https://raw.githubusercontent.com/Adrian-Hazael-hdz/Act12_6I_3Pantallas_1128/refs/heads/main/producto4.jpg"),
                    _itemProd("Monitor", "\$4k", "https://raw.githubusercontent.com/Adrian-Hazael-hdz/Act12_6I_3Pantallas_1128/refs/heads/main/producto6.jpg"),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _btnNav(context, "Volver", Icons.arrow_back, '/'),
                  _btnNav(context, "Check out", null, '/carrito'),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _itemProd(String n, String p, String u) {
    return Container(
      decoration: BoxDecoration(border: Border.all(color: Colors.black)),
      child: Column(children: [
        Expanded(child: Image.network(u, fit: BoxFit.cover, width: double.infinity)),
        Container(
          width: double.infinity,
          margin: const EdgeInsets.all(4),
          decoration: BoxDecoration(border: Border.all(color: Colors.black)),
          child: Column(children: [Text(n), Text(p)]),
        )
      ]),
    );
  }

  Widget _btnNav(BuildContext context, String t, IconData? i, String r) {
    return OutlinedButton.icon(
      onPressed: () => Navigator.pushNamed(context, r),
      icon: i != null ? Icon(i) : const SizedBox(),
      label: Text(t),
      style: OutlinedButton.styleFrom(foregroundColor: Colors.black, side: const BorderSide(color: Colors.black)),
    );
  }
}