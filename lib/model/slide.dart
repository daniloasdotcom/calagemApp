import 'package:flutter/material.dart';

class Slide {
  final String imageUrl;
  final String title;
  final String description;

  Slide({
    @required this.imageUrl,
    @required this.title,
    @required this.description
  });
}

final slideList = [
  Slide(
    imageUrl: 'assets/images/CalagemApp.png',
    title: "Saturação por Bases",
    description: ""
  ),
  Slide(
    imageUrl: 'assets/images/CalagemApp.png',
    title: "Neutralização do Alúminio e Elevação do Ca + Mg (Alvarez V. e Ribeiro, 1999)",
    description: ""
  ),
  Slide(
    imageUrl: 'assets/images/CalagemApp.png',
    title: "Algoritmo de Guarçoni, Alvarez e Camilo (2007)",
    description: ""
  )
];