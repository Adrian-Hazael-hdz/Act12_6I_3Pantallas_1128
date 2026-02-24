import 'package:flutter/material.dart';
import '../main.dart';

class Pagina3 extends StatelessWidget {
  const Pagina3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF1F8E9),
      endDrawer: const MenuLateralDerecho(),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xFFDCEDC8),
        title: const Text("PChop"),
        actions: [
          const Icon(Icons.search, color: Colors.black),
          Builder(builder: (context) => IconButton(
            icon: const Icon(Icons.menu, color: Colors.black),
            onPressed: () => Scaffold.of(context).openEndDrawer(),
          )),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Text("Carrito", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
            Expanded(
              child: ListView(
                children: [
                  _itemCart("PC", "\$25,000", "https://raw.githubusercontent.com/Adrian-Hazael-hdz/Act12_6I_3Pantallas_1128/refs/heads/main/producto1.jpg"),
                  _itemCart("Mouse", "\$1,500", "https://raw.githubusercontent.com/Adrian-Hazael-hdz/Act12_6I_3Pantallas_1128/refs/heads/main/producto2.jpg"),
                  _itemCart("Telefono", "\$10,000", "https://raw.githubusercontent.com/Adrian-Hazael-hdz/Act12_6I_3Pantallas_1128/refs/heads/main/producto3.jpg"), // Nuevo
                  _itemCart("Teclado", "\$2,000", "https://raw.githubusercontent.com/Adrian-Hazael-hdz/Act12_6I_3Pantallas_1128/refs/heads/main/producto4.jpg"),     // Nuevo
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _btnVolver(context, "Volver", Icons.replay_outlined, '/productos'),
                _btnVolver(context, "Finalizar", null, '/'),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _itemCart(String n, String p, String u) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Container(width: 70, height: 70, decoration: BoxDecoration(border: Border.all(color: Colors.black)), child: Image.network(u)),
          const SizedBox(width: 15),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(n, style: const TextStyle(fontWeight: FontWeight.bold)),
            Text(p),
            const Row(children: [Icon(Icons.delete_outline, size: 20), SizedBox(width: 15), Icon(Icons.info_outline, size: 20)]),
          ])
        ],
      ),
    );
  }

  Widget _btnVolver(BuildContext context, String t, IconData? i, String r) {
    return InkWell(
      onTap: () => Navigator.pushNamed(context, r),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(border: Border.all(color: Colors.black, width: 2)),
        child: Row(children: [Text(t), if (i != null) Icon(i)]),
      ),
    );
  }
}