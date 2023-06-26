import 'package:flutter/material.dart';

import './resultado.dart';
import './questao.dart';
import './questionario.dart';

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
List<String> respostas = [];

void acao(String resposta){
    setState(() {
      respostas.add(resposta);
      perguntaAtual++;
    });
    print(perguntaAtual);
  }

bool get temPergunta{
  return perguntaAtual < perguntas.length;
}

    Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: temPergunta
              ? Questao(perguntas[perguntaAtual]["texto"].toString()) 
              : Questao("Terminou"),
        ),
        body: temPergunta
            ? Questionario(
                perguntas: perguntas,
                perguntaAtual: perguntaAtual,
                onRespostaSelecionada: (resposta) => acao(resposta),
              )
            : Resultado(respostas: respostas),
      ),
    );
  }
}
