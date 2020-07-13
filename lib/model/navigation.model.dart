import 'package:flutter/material.dart';

class NavigationModel {
  String title;
  IconData icon;

  NavigationModel({this.title, this.icon});
}

List<NavigationModel> navigationItems = [
  NavigationModel(
    title: 'Diagnóstico',
    icon: Icons.assessment,
  ),
  NavigationModel(title: 'Home', icon: Icons.home),
  NavigationModel(title: 'Notificações', icon: Icons.notifications),
  NavigationModel(title: 'Preferências', icon: Icons.settings),
  NavigationModel(title: 'Informações', icon: Icons.info),
];