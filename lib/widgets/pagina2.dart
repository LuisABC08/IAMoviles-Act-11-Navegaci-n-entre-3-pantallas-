import 'package:flutter/material.dart';

// --- PAGINA 2 ---
class PaginaDos extends StatelessWidget {
  const PaginaDos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Segunda Página', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                "¡Bienvenido a la sección visual!",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            // Imagen desde la red con bordes redondeados
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  'https://picsum.photos/400/300', // Imagen aleatoria de la red
                  loadingBuilder: (context, child, progress) {
                    return progress == null ? child : const CircularProgressIndicator();
                  },
                ),
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/tercera'),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green[100]),
              child: const Text('Ir a la Tercera Página', style: TextStyle(color: Colors.black)),
            ),
          ],
        ),
      ),
    );
  }
}

