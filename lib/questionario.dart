import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

class Questionario extends StatelessWidget {
  final int perguntaSelecionada;
  final List<Map<String, Object>> perguntas;
  final void Function() responder;

  Questionario({
    @required this.perguntas, //Parametros obrigatórios
    @required this.perguntaSelecionada,
    @required this.responder,
  });

  bool get temPerguntaSelecionada {
    return perguntaSelecionada < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<String> respostas = temPerguntaSelecionada
        ? perguntas[perguntaSelecionada]['respostas']
        : null;

    return Column(
      children: <Widget>[
        // Lista de vários componentes
        Questao(perguntas[perguntaSelecionada]
            ['texto']), // Caixa de Texto |Indice e Chave|
        ...respostas
            .map((t) => Resposta(t, responder))
            .toList(), //Transforma uma lista de String em uma lista de Widgets
      ],
    );
  }
}
