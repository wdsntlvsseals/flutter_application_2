import './repositorio_questoes.dart';
import 'questao.dart';

class ControladorQuiz {
  final repositorio = RepositorioQuestoes();

  String _alternativaSelecionada = "";
  int _indiceQuestaoAtual = 0;

  int get indiceQuestaoAtual => _indiceQuestaoAtual + 1;
  Questao get questaoAtual => repositorio.listar()[_indiceQuestaoAtual];
  int get quantidadeTotalQuestoes => repositorio.listar().length;

  String get alternativaSelecionada => _alternativaSelecionada;
  bool get selecionouAlternativa => _alternativaSelecionada != "";

  void selecionarAlters(String alternativa) {
    _alternativaSelecionada = alternativa;
    print("clicou na ${alternativa}");
  }
}
