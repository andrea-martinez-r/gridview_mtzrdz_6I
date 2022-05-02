import 'package:flutter/material.dart';

class PaginaInicial extends StatefulWidget {
  const PaginaInicial({Key? key}) : super(key: key);
  @override
  _PaginaInicialState createState() => _PaginaInicialState();
} //widget con estado

class _PaginaInicialState extends State<PaginaInicial> {
  List<String> images = [
    "assets/images/servicios-de-optometria-en-fuenlabrada.jpg",
    "assets/images/lentes.jpg",
    "assets/images/contactos.jpg",
    "assets/images/rauw.jpg",
    "assets/images/maluma.jpg",
    "assets/images/playa.jpg",
    "assets/images/opto.jpg",
    "assets/images/examen.jpg",
  ]; //lista de imagenes
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Listado de articulosv2"),
        ),
        body: GridView.custom(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          childrenDelegate: SliverChildBuilderDelegate(
            (BuildContext, index) {
              return Image.asset(
                images[index],
                fit: BoxFit.cover,
              );
            },
            childCount: 8,
          ),
          padding: const EdgeInsets.all(10),
          shrinkWrap: true,
        ));
  }
}
