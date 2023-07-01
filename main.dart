import 'package:flutter/material.dart';
import 'dart:math';


class Ficha extends StatelessWidget {
  final String imageUrl;
  final String nome;
  final int matricula;
  final String escola;
  final String ano;
  final String periodo;

  Ficha({
    required this.imageUrl,
    required this.nome,
    required this.matricula,
    required this.escola,
    required this.ano,
    required this.periodo,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image.network(
            imageUrl,
            width: 100,
            height: 150,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 10),
          Text('Nome: $nome'),                 
          Text('Matrícula: $matricula'),
          Text('Escola: $escola'),
          Text('Ano: $ano'),
          Text('Período: $periodo')
        ],
      ),
    );
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Ficha> fichas = [
    Ficha(
      imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQyt0bQbrTa-30GNQRHGOGWX-skiQZNxdgj8A&usqp=CAUimgs\img1.png',
      nome: 'Maria',
      matricula: Random().nextInt(100000),
      escola: 'CEFET-MG',
      ano: '2023',
      periodo: '1° Período',
    ),

    Ficha(
      imageUrl: 'https://png.pngtree.com/png-clipart/20220322/ourmid/pngtree-cartoon-cute-godzilla-character-girl-drinking-milk-tea-head-png-image_4507335.png',
      nome: 'Júlia',
      matricula: Random().nextInt(100000),
      escola: 'CEFET-MG',
      ano: '2023',
      periodo: '5° Período',
    ),
    Ficha(
      imageUrl: 'https://png.pngtree.com/png-clipart/20210313/ourmid/pngtree-cute-cartoon-characters-png-image_3021844.jpg',
      nome: 'Fernanda',
      matricula: Random().nextInt(100000),
      escola: 'CEFET-MG',
      ano: '2023',
      periodo: '3° Período',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Ficha de Alunos'),
        ),
        body: ListView.builder(
          itemCount: fichas.length,
          itemBuilder: (ctx, index) {
            return fichas[index];
          },
        ),
      ),
    );
  }
}
