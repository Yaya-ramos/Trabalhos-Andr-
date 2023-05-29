import 'package:flutter/material.dart';

import './questao.dart';
import './resposta.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  var perguntaAtual = 0;
  var cor = Colors.white;

final List<Map<String, Object>> perguntas = [
    {
      "texto" : "Qual a sua cor favorita?",
      "respostas" : ["Preto", "Branco", "Azul", "Vermelho"]
    },
    {
      "texto" : "Qual é seu animal favorito?",
      "respostas" : ["Cachorro", "Gato", "Peixe", "Cobra"]
    },
    {
      "texto" : "Qual sua linguagem favorita?",
      "respostas" : ["PHP", "Java", "JavaScript"]
    },
];
  
  void acao(){
    setState(() {
      perguntaAtual++;
    });
    print(perguntaAtual);
  }

   Widget build(BuildContext context){

    List<Widget> respostas = [];
    
    for (var resposta in perguntas[perguntaAtual].cast()["respostas"]) {
      print(resposta);
      respostas.add(
          resposta(resposta, acao)
        );
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Questao(perguntas[perguntaAtual]["texto"].toString()),
        ),
        body: Column(
          children: [
            ...respostas,
          ],
        ),
      )
    );
  }
}