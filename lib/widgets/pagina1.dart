import 'package:flutter/material.dart';
// --- PAGINA 1 ---
class PaginaUno extends StatelessWidget {
  const PaginaUno({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inicio', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton.icon(
          onPressed: () => Navigator.pushNamed(context, '/segunda'),
          icon: const Icon(Icons.arrow_forward),
          label: const Text('Ir a la Segunda Página'),
          style: ElevatedButton.styleFrom(padding: const EdgeInsets.all(15)),
        ),
      ),
    );
  }
}
