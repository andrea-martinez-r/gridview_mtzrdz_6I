import 'package:flutter/material.dart';
import 'package:martinezrodriguez/gridviewarticulos.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Ej. GridView', //p0estaña en web
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.pink,
        ), //tema color global
        home: const MyHomePage());
  }
} //widget sin estado
