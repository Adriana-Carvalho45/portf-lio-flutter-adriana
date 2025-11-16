import 'package:flutter/material.dart';
import 'tela_inicial.dart';

void main() {
  runApp(const MeuApp());
}

class MeuApp extends StatelessWidget {
  const MeuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfólio Adriana',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const TelaInicial(),
    );
  }
}