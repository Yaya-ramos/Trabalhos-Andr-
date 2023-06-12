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
  
bool get temPergunta{
  return perguntaAtual < perguntas.length;
}
  void acao(){
    setState(() {
      perguntaAtual++;
    });
    print(perguntaAtual);
  }

   Widget build(BuildContext context){

    List<Widget> respostas = [];

if(temPergunta){
    for (var resposta in perguntas[perguntaAtual].cast()["respostas"]) {
      print(resposta);
      respostas.add(
          Resposta(resposta, acao)
        );
    }
}

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: temPergunta ? Questao(perguntas[perguntaAtual]["texto"].toString()) : Questao("Terminou"),
        ),
        body: temPergunta ? Column(
          children: [
            ...respostas,
          ],
        ) : Text("Resultado"),
      )
    );
  }
}