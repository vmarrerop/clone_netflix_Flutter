import 'package:clone_netflix/componentes/cartel_principal.dart';
import 'package:clone_netflix/componentes/item_cuadrado.dart';
import 'package:clone_netflix/componentes/item_redondeado.dart';
import 'package:flutter/material.dart';

class InicioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(children: <Widget>[
        //Primer Elemento
        CartelPrincipal(),
        //PRIMERA LISTA
        listaHorizontal('Avances', ItemRedondeado(), 6),
        //Espacio
        const SizedBox(
          height: 15.0,
        ),
        //SEGUNDA LISTA
        listaHorizontal('Programas sobre viajes', ItemCuadrado(), 6),
        //ESPACIO
        const SizedBox(
          height: 15.0,
        ),
        //TERCERA LISTA
        listaHorizontal('Tendencias', ItemCuadrado(), 6),
        //ESPACIO
        const SizedBox(
          height: 15.0,
        ),
        //CUARTA LISTA
        listaHorizontal('Mi lista', ItemCuadrado(), 6),
        //ESPACIO
        const SizedBox(
          height: 40.0,
        )
      ]),
      bottomNavigationBar: navInferior(),
    );
  }

  BottomNavigationBar navInferior() {
    return BottomNavigationBar(
      //ESTILOS
      backgroundColor: Colors.black,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white54,
      type: BottomNavigationBarType.fixed,

      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home), label: ('Inicio')),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: ('Buscar')),
        BottomNavigationBarItem(
            icon: Icon(Icons.library_music), label: ('Proximamente')),
        BottomNavigationBarItem(
            icon: Icon(Icons.arrow_downward), label: ('Descargas')),
        BottomNavigationBarItem(icon: Icon(Icons.more_horiz), label: ('Más')),
      ],
    );
  }

  Widget listaHorizontal(String titulo, Widget item, int cantidad) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text(
            titulo,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
        ),
        Container(
          height: 110.0,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: cantidad,
            itemBuilder: (context, index) => item,
          ),
        )
      ],
    );
  }
}
