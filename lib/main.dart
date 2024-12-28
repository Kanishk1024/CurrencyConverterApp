import 'package:flutter/material.dart';
import 'material_page.dart'; // Importing the material_page.dart file

void main() {
  runApp(const MyApp());
}

// Types of Widgets:
// 1. Stateless Widget
// 2. Statefull Widget
// 3. Inherited Widget

// Types of design
// 1. Material Design - Android like design
// 2. Cupertino Design - ios like design

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CCMaterialPage(),
    );
  }
}
