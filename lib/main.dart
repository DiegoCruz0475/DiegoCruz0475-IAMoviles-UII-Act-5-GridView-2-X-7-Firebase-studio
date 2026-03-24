import 'package:flutter/material.dart';

void main() {
  runApp(const YeyoDwelingsApp());
}

class YeyoDwelingsApp extends StatelessWidget {
  const YeyoDwelingsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Yeyo Dwelings',
      theme: ThemeData(
        useMaterial3: true,
        primaryColor: const Color(0xFF2962FF),
      ),
      home: const PropertyListScreen(),
    );
  }
}

class PropertyListScreen extends StatelessWidget {
  const PropertyListScreen({super.key});

  // Lista de URLs de imágenes proporcionadas
  final List<String> imageUrls = const [
    "https://raw.githubusercontent.com/DiegoCruz0475/Casas_Imagenes_GIJUUUU/refs/heads/main/Imagenes_Gijuuuu/casa1.jpg",
    "https://raw.githubusercontent.com/DiegoCruz0475/Casas_Imagenes_GIJUUUU/refs/heads/main/Imagenes_Gijuuuu/casa2.jpg",
    "https://raw.githubusercontent.com/DiegoCruz0475/Casas_Imagenes_GIJUUUU/refs/heads/main/Imagenes_Gijuuuu/casa3.jpg",
    "https://raw.githubusercontent.com/DiegoCruz0475/Casas_Imagenes_GIJUUUU/refs/heads/main/Imagenes_Gijuuuu/casa4.jpg",
    "https://raw.githubusercontent.com/DiegoCruz0475/Casas_Imagenes_GIJUUUU/refs/heads/main/Imagenes_Gijuuuu/casa5.jpg",
    "https://raw.githubusercontent.com/DiegoCruz0475/Casas_Imagenes_GIJUUUU/refs/heads/main/Imagenes_Gijuuuu/casa6.jpg",
    "https://raw.githubusercontent.com/DiegoCruz0475/Casas_Imagenes_GIJUUUU/refs/heads/main/Imagenes_Gijuuuu/casa7.jpg",
    "https://raw.githubusercontent.com/DiegoCruz0475/Casas_Imagenes_GIJUUUU/refs/heads/main/Imagenes_Gijuuuu/casa8.jpg",
    "https://raw.githubusercontent.com/DiegoCruz0475/Casas_Imagenes_GIJUUUU/refs/heads/main/Imagenes_Gijuuuu/casa9.jpg",
    "https://raw.githubusercontent.com/DiegoCruz0475/Casas_Imagenes_GIJUUUU/refs/heads/main/Imagenes_Gijuuuu/casa10.jpg",
    "https://raw.githubusercontent.com/DiegoCruz0475/Casas_Imagenes_GIJUUUU/refs/heads/main/Imagenes_Gijuuuu/casa11.jpg",
    "https://raw.githubusercontent.com/DiegoCruz0475/Casas_Imagenes_GIJUUUU/refs/heads/main/Imagenes_Gijuuuu/casa12.jpg",
    "https://raw.githubusercontent.com/DiegoCruz0475/Casas_Imagenes_GIJUUUU/refs/heads/main/Imagenes_Gijuuuu/casa13.jpg",
    "https://raw.githubusercontent.com/DiegoCruz0475/Casas_Imagenes_GIJUUUU/refs/heads/main/Imagenes_Gijuuuu/casa14.jpg",
  ];

  // Adjetivos descriptivos solicitados
  final List<String> descriptors = const [
    "Esta Especial", "Chevere", "Linda", "Bonita", "Preciosa", "Hermosa",
    "Increíble", "Espectacular", "Moderna", "Única", "Acogedora", "Elegante", "De Lujo", "Minimalista"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5), // Fondo gris muy claro para el cuerpo
      body: Column(
        children: [
          // Sección Superior: Azul sólido con Título
          Container(
            width: double.infinity,
            padding: const EdgeInsets.only(top: 60, left: 20, bottom: 30),
            decoration: const BoxDecoration(
              color: Color(0xFF2962FF),
            ),
            child: const Text(
              'Yeyo Dwelings',
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          
          // Sección de Cuadrícula (GridView)
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(12),
              // Configuración de 2 columnas fijas
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                childAspectRatio: 0.75, // Ajuste para el alto de la tarjeta
              ),
              itemCount: 14, // 14 tarjetas en total
              itemBuilder: (context, index) {
                // Alternamos la calificación: si el índice es par damos 5 estrellas, si es impar damos 4
                int rating = (index % 2 == 0) ? 5 : 4;
                
                return PropertyCard(
                  imageUrl: imageUrls[index],
                  title: "Casa Moderna ${index + 1}",
                  subtitle: descriptors[index],
                  rating: rating,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

/// Widget personalizado para representar cada tarjeta de propiedad
class PropertyCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;
  final int rating;

  const PropertyCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.subtitle,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      clipBehavior: Clip.antiAlias, // Asegura que la imagen respete los bordes redondeados
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Imagen: 50-60% de la altura aproximada mediante el uso de Expanded
          Expanded(
            flex: 6,
            child: Image.network(
              imageUrl,
              width: double.infinity,
              fit: BoxFit.cover,
              // Placeholder mientras carga la imagen
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) return child;
                return const Center(child: CircularProgressIndicator(strokeWidth: 2));
              },
              // Manejo de error si la URL falla
              errorBuilder: (context, error, stackTrace) => 
                  const Center(child: Icon(Icons.broken_image, size: 40)),
            ),
          ),
          
          // Contenido de texto y estrellas
          Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.black,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    subtitle,
                    style: const TextStyle(
                      fontSize: 13,
                      color: Colors.black87,
                    ),
                  ),
                  // Fila de estrellas
                  Row(
                    children: List.generate(5, (index) {
                      return Icon(
                        index < rating ? Icons.star : Icons.star_border,
                        color: Colors.amber,
                        size: 18,
                      );
                    }),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}