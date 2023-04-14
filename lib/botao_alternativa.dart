import 'package:flutter/material.dart';

class BotaoAlternativa extends StatelessWidget {
  final String alternativa;
  final Function acao;
  final bool selecionado;

  BotaoAlternativa({
    super.key,
    required this.alternativa,
    required this.acao,
    required this.selecionado,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 300,
          height: 50,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.grey[100],
              foregroundColor: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
                side: BorderSide(
                  color: selecionado ? Colors.amber : Colors.white,
                  width: 3.0,
                ),
              ),
            ),
            onPressed: () {
              acao(alternativa);
            },
            child: Text(alternativa),
          ),
        ),
        SizedBox(height: 10),
      ],
    );
  }
}
