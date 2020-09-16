import 'package:flutter/material.dart';

main() => runApp(PerguntaApp());

class PerguntaAppState extends State<PerguntaApp> {
  var perguntaSelecionada = 0;

  void responder() {
    setState(() {
      perguntaSelecionada++;
    });

    print(perguntaSelecionada);
  }

  @override
  Widget build(BuildContext context) {
    
    final perguntas = [
      'Qual é a sua cor favorita ?',
      'Qual é o seu animal favorito?'
    ];

    return MaterialApp(
      home: Scaffold(
        //Estrtutura da aplicação
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: [
            // Lista de vários componentes
            Text(perguntas[perguntaSelecionada]), // Caixa de Texto
            RaisedButton(
              child: Text('Resposta 1'),
              onPressed: responder,
            ),
            RaisedButton(
              child: Text('Resposta 2'),
              onPressed: responder,
            ),
            RaisedButton(
              child: Text('Resposta 3'),
              onPressed: responder,
            ),
          ],
        ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  PerguntaAppState createState() {
    return PerguntaAppState();
  }
}
