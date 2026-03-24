# Pormpt:
Rol: Actúa como un experto Desarrollador Senior de Flutter y Dart.

Tarea: Crear una aplicación completa de Flutter que recree la interfaz de usuario que se muestra en la imagen adjunta, pero escalada para mostrar un total de 14 tarjetas de propiedades.

Requisitos Específicos de la Interfaz:

Estructura Principal: La pantalla debe tener un fondo de color azul sólido (#2962FF) en la parte superior, que contenga el título principal.

Título Principal: Texto "Yeyo Dwelings", grande, en color blanco, en negrita y alineado a la izquierda dentro del área azul.

Cuerpo: Debajo del título, la sección principal debe tener un fondo de color gris muy claro o blanquecino, creando un contraste con el encabezado azul.

Diseño de Cuadrícula (GridView): Utilizar un widget GridView.builder (o similar) para crear una cuadrícula con las siguientes características:

Columnas: Exactamente 2 columnas fijas.

Filas: 7 filas, para un total de 14 tarjetas de propiedades.

Espaciado: Espacio uniforme (padding/margin) entre las tarjetas y alrededor de la cuadrícula, similar al diseño de la imagen.

Diseño de la Tarjeta: Cada celda de la cuadrícula debe contener una tarjeta (Card o Container con sombra) redondeada con los siguientes elementos organizados verticalmente (de arriba a abajo):

Imagen: Una imagen cargada desde la web (Image.network), con bordes redondeados en la parte superior, que ocupe aproximadamente el 50-60% de la altura de la tarjeta.

Título de la Casa: Texto en negrita y negro, "Casa Moderna X", donde X es el número correlativo de la casa (del 1 al 14).

Subtítulo: Texto más pequeño en negro, un adjetivo descriptivo único para cada casa. Utiliza los adjetivos de la imagen original ("Esta Espechal", "Chevere", "Linda", "Bonita", "Preciosa", "Hermosa", etc.) y luego inventa otros para llegar a 14 (ej. "Increíble", "Espectacular", "Moderna", "Única", "Acogedora", "Elegante", "De Lujo").

Calificación (Estrellas): Una fila (Row) de 5 iconos de estrellas. Alterna el patrón de calificación (ej. 4 estrellas amarillas/1 gris, 5 amarillas, etc.) para que parezca realista. Usa iconos de Flutter (Icons.star e Icons.star_border).

Uso de Datos (Imágenes): Se DEBEN usar las siguientes URLs de imágenes para las 14 casas, asignando una a cada tarjeta secuencialmente:

Casa 1: https://raw.githubusercontent.com/DiegoCruz0475/Casas_Imagenes_GIJUUUU/refs/heads/main/Imagenes_Gijuuuu/casa1.jpg

Casa 2: https://raw.githubusercontent.com/DiegoCruz0475/Casas_Imagenes_GIJUUUU/refs/heads/main/Imagenes_Gijuuuu/casa2.jpg

Casa 3: https://raw.githubusercontent.com/DiegoCruz0475/Casas_Imagenes_GIJUUUU/refs/heads/main/Imagenes_Gijuuuu/casa3.jpg

Casa 4: https://raw.githubusercontent.com/DiegoCruz0475/Casas_Imagenes_GIJUUUU/refs/heads/main/Imagenes_Gijuuuu/casa4.jpg

Casa 5: https://raw.githubusercontent.com/DiegoCruz0475/Casas_Imagenes_GIJUUUU/refs/heads/main/Imagenes_Gijuuuu/casa5.jpg

Casa 6: https://raw.githubusercontent.com/DiegoCruz0475/Casas_Imagenes_GIJUUUU/refs/heads/main/Imagenes_Gijuuuu/casa6.jpg

Casa 7: https://raw.githubusercontent.com/DiegoCruz0475/Casas_Imagenes_GIJUUUU/refs/heads/main/Imagenes_Gijuuuu/casa7.jpg

Casa 8: https://raw.githubusercontent.com/DiegoCruz0475/Casas_Imagenes_GIJUUUU/refs/heads/main/Imagenes_Gijuuuu/casa8.jpg

Casa 9: https://raw.githubusercontent.com/DiegoCruz0475/Casas_Imagenes_GIJUUUU/refs/heads/main/Imagenes_Gijuuuu/casa9.jpg

Casa 10: https://raw.githubusercontent.com/DiegoCruz0475/Casas_Imagenes_GIJUUUU/refs/heads/main/Imagenes_Gijuuuu/casa10.jpg

Casa 11: https://raw.githubusercontent.com/DiegoCruz0475/Casas_Imagenes_GIJUUUU/refs/heads/main/Imagenes_Gijuuuu/casa11.jpg

Casa 12: https://raw.githubusercontent.com/DiegoCruz0475/Casas_Imagenes_GIJUUUU/refs/heads/main/Imagenes_Gijuuuu/casa12.jpg

Casa 13: https://raw.githubusercontent.com/DiegoCruz0475/Casas_Imagenes_GIJUUUU/refs/heads/main/Imagenes_Gijuuuu/casa13.jpg

Casa 14: https://raw.githubusercontent.com/DiegoCruz0475/Casas_Imagenes_GIJUUUU/refs/heads/main/Imagenes_Gijuuuu/casa14.jpg

Formato de Salida:

Por favor, proporciona el código completo de Dart en un solo archivo main.dart que esté listo para ser copiado, pegado y ejecutado en un entorno de desarrollo Flutter. Asegúrate de incluir todos los imports necesarios. Utiliza comentarios para explicar las partes clave del código, especialmente cómo se configura el GridView y la estructura de la tarjeta personalizada.

# Web
<img width="627" height="810" alt="image" src="https://github.com/user-attachments/assets/0720a432-5b62-4fd6-ae35-16e441dde1a2" />

# Android

# myapp

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
