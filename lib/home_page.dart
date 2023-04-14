import 'package:flutter/material.dart';
import 'package:flutter_application_2/botao_alternativa.dart';
import 'package:flutter_application_2/controlador_quiz.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ControladorQuiz controladorQuiz = ControladorQuiz();

  void _selecionarAlternativa(String alternativa) {
    setState(() {
      controladorQuiz.selecionarAlters(alternativa);
    });
  }

  @override
  Widget build(BuildContext context) {
    final questao = controladorQuiz.questaoAtual;

    return Scaffold(
      appBar: AppBar(
        title: Text("Quiz App"),
      ),
      body: Container(
        padding: EdgeInsets.all(50),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                  "Questão ${controladorQuiz.indiceQuestaoAtual}/${controladorQuiz.quantidadeTotalQuestoes}"),
              Divider(thickness: 5),
              Text(questao.enunciado),
              Divider(thickness: 5),
              SizedBox(height: 10),
              ...controladorQuiz.questaoAtual.alternativas.map((alternativa) {
                return BotaoAlternativa(
                  selecionado:
                      controladorQuiz.alternativaSelecionada == alternativa,
                  alternativa: alternativa,
                  acao: _selecionarAlternativa,
                );
              })
            ],
          ),
        ),
      ),
    );
  }
}
