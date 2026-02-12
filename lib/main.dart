import 'package:flutter/material.dart';

void main() => runApp(AppBoutique());

class AppBoutique extends StatelessWidget {
  const AppBoutique({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Boutique',
      home: Faldas(),
    );
  }
}//fin clase AppBoutique
class Faldas extends StatelessWidget {
  const Faldas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: const Text(
        '6J Boutique Moon Sweet',
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
      centerTitle: true,
      backgroundColor: const Color(0xFFE1BEE7), // Color lila
      elevation: 0, // Opcional: elimina la sombra para un look más limpio
      leading: IconButton(
        icon: const Icon(Icons.camera_alt, color: Colors.black),
        onPressed: () {
          // Acción para la cámara
        },
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.checkroom, color: Colors.black), // Icono de vestido
          onPressed: () {
            // Acción para ver vestidos
          },
        ),
        IconButton(
          icon: const Icon(Icons.shopping_bag, color: Colors.black), // Icono de bolso
          onPressed: () {
            // Acción para el carrito/bolso
          },
        ),
      ],
    ),
    body: ListView.builder(
  padding: const EdgeInsets.all(20),
  itemCount: 4, // Los 4 elementos que pediste
  itemBuilder: (context, index) {
    // Definimos los datos de cada elemento según su posición (index)
    List<Map<String, dynamic>> items = [
      {'t': 'Falda Cuadros', 's': 'Diseño Unico', 'i': Icons.person, 'c': Colors.blueAccent},
      {'t': 'MiniFalda', 's': 'Para lucir Mas', 'i': Icons.chat_bubble, 'c': Colors.purpleAccent},
      {'t': 'Falda Mezclilla', 's': 'Ideal Para Reuniones', 'i': Icons.credit_card, 'c': Colors.orangeAccent},
      {'t': 'Falda Larga', 's': 'Para Cualquier Lugar', 'i': Icons.settings, 'c': Colors.tealAccent},
    ];

    final item = items[index];

    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        // LEADING: El icono con un fondo circular moderno
        leading: CircleAvatar(
          backgroundColor: item['c'].withOpacity(0.2),
          child: Icon(item['i'], color: item['c']),
        ),
        // TEXT: Título y subtítulo con estilo moderno
        title: Text(
          item['t'],
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        subtitle: Text(item['s']),
        // TRAILING: Flecha de acción
        trailing: const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
        // FUNCIONALIDAD: Al presionar muestra un mensaje
        onTap: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Abriendo ${item['t']}...'),
              backgroundColor: item['c'],
              behavior: SnackBarBehavior.floating,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            ),
          );
        },
      ),
    );
  },
),
    );
  }
}//fin clase Faldas