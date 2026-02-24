# Act12_6I_3Pantallas_1128

<img width="945" height="837" alt="image" src="https://github.com/user-attachments/assets/88581b4e-caff-4507-920b-ab63730e0139" />
<img width="957" height="824" alt="image" src="https://github.com/user-attachments/assets/bf518ff5-488f-4cf7-ad4f-20866c9fcfa4" />
<img width="954" height="837" alt="image" src="https://github.com/user-attachments/assets/02c4f6c0-d11e-404c-ad67-99abe1ffadf0" />
<img width="950" height="829" alt="image" src="https://github.com/user-attachments/assets/d80a463e-4cba-4e2f-b70f-e2498954ff14" />
<img width="440" height="746" alt="image" src="https://github.com/user-attachments/assets/f276a4de-6427-49b8-9b26-8d311fb8e585" />
<img width="435" height="749" alt="image" src="https://github.com/user-attachments/assets/513d86bb-f89f-4a90-b82f-390e4d48e702" />
<img width="431" height="750" alt="image" src="https://github.com/user-attachments/assets/d2af1c06-85d2-4e0f-8f41-9acc072e9fe5" />

prompt:
Lenguaje dart flutter principiante para crear una tienda de tecnología llamada 'PChop'. La aplicación debe seguir una estética Gamer/Retro con bordes negros marcados (estilo cómic/flat design), tipografías en negrita y una paleta de colores en tonos pasteles y claros (morados, lavandas, verdes y azules suaves)."

Estructura del Proyecto:

Divide el código en una arquitectura limpia: un archivo main.dart para la configuración y una carpeta lib/widgets/ que contenga pagina1.dart, pagina2.dart y pagina3.dart.

Implementa Rutas Nombradas para la navegación entre las tres pantallas.

Crea un EndDrawer (menú hamburguesa a la derecha) único y funcional que incluya el nombre del desarrollador 'Adrian Hernandez 6I' y enlaces a todas las secciones.

Especificaciones de Pantallas:

Pagina 1 (Bienvenida):

AppBar morada con buscador y menú a la derecha.

Título 'BIENVENIDO!!!' en grande y subtítulo 'Productos destacados'.

Un GridView de 2 columnas con 4 cuadros. Cada cuadro debe tener un borde negro grueso, una imagen cargada desde picsum.photos y un recuadro inferior con el precio.

Pagina 2 (Productos):

Título 'Productos'.

Malla de 6 productos (PC, Teléfono, Audífonos, Mouse, Teclado, Monitor).

Optimización Web: El GridView debe tener un maxWidth de 800px y un childAspectRatio de 0.8 para evitar que los cuadros se vean gigantes en pantallas de escritorio.

Diseño de "cuadro dentro de cuadro" para encerrar nombre y precio debajo de la imagen.

Botones inferiores de 'Volver' (hacia inicio) y 'Check out' con bordes negros.

Pagina 3 (Carrito):

Lista vertical (ListView) con 4 productos (incluyendo Tarjeta de Video y Smartphone).

Cada fila debe mostrar la imagen cuadrada, nombre, precio y dos iconos: una papelera (delete_outline) y uno de información (info_outline).

Botón inferior de 'Volver' (hacia productos) y 'Finalizar' alineados a los extremos.
