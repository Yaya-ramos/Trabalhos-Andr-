import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final List<String> respostas;

  Resultado({required this.respostas});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: ListView.builder(
        itemCount: respostas.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(respostas[index]),
          );
        },
      ),
    );
  }
}
