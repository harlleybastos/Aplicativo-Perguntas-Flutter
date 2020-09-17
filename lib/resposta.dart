import 'package:flutter/material.dart';

class Resposta  extends StatelessWidget {
  
  final String vbutao; //Função para usar como parametro na classe mãe
  final void Function() quandoSelecionado; // Função do botão

  Resposta (this.vbutao, this.quandoSelecionado); //Instanciando os parametros
  
  @override
  Widget build(BuildContext context) {

    return Container(
      width: double.infinity, // Largura do container
      child: RaisedButton(
          textColor: Colors.white, // Cor do texto
            color: Colors.blue , //Background Color
            child: Text(vbutao),
            onPressed: quandoSelecionado,
          ),
    );
  }
}