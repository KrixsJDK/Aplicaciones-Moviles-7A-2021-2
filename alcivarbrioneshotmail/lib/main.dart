import 'package:flutter/material.dart';
import 'screens/list_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Correo Hotmail',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Color(0xffaed581),
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const ListScreen(title: 'HOTMAIL-ALCIVAR BRIONES CRISTHOPHER'),
    );
  }
}
