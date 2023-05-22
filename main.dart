import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() {
  runApp(ComponenteInicial());
}

class ComponenteInicial extends StatefulWidget {
  @override
  State<ComponenteInicial> createState() => _ComponenteInicialState();
}

class _ComponenteInicialState extends State<ComponenteInicial> {
  var contador = 0;

  var perguntas = [
    "Qual seu nome?",
    "Qual sua data de nascimento?",
    "Qual sua cor favorita?",
    "Qual sua comida favorita?"
  ];
  
    

  void eventoBotao() {
    setState(() {
      contador:
      contador++;
    });
    print(contador);
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Atividade - Yara Ramos Dias"),
          ),
          body: Column(
            children: [
              Text(perguntas[contador]),
              ElevatedButton(onPressed: eventoBotao, child: Text("Enviar")),
            Column(
              children:[
                ElevatedButton(onPressed: eventoBotao, child: Text("Novo Botão")),
            ],
            )
            ],
          )),
    );
  }
}
