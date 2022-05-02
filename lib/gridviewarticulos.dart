import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
} //widget con estado

class _MyHomePageState extends State<MyHomePage> {
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
          title: const Text("Opticas 2020"),
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
