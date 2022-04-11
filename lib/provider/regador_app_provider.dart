import 'package:flutter/material.dart';
import 'package:regador_avaliacao/ui/pages/home_page/home_page.dart';
import 'package:regador_avaliacao/ui/pages/home_page/widgets/modelo_card_lista_de_plantas.dart';
import 'package:regador_avaliacao/ui/pages/home_page/widgets/modelo_card_regador.dart';
import 'dart:math';

class RegadorAppProvider extends ChangeNotifier {
  // Variáveis
  final List<ModeloCardRegador> _listaRegadores = [
    ModeloCardRegador(
      capacidadeRegador: '55%',
      numeroSerie: '0001',
      horarioFinal: TimeOfDay.now(),
      horarioInicial: TimeOfDay.now(),
      statusRegador: 'Ativo',
      ultimaAtividade: DateTime.now(),
      nomeRegador: 'Regador Alface ',
      reservatorio: 50,

    ),
  ];
  final List<ModeloCardListaDePlantas> _listaPlantas = [
    const ModeloCardListaDePlantas(
      descricao: 'Alface é uma hortense anual ou bienal, utilizada na alimentação humana desde cerca de 500 a.C.. Originária do Leste do Mediterrâneo, é mundialmente cultivada para o consumo em saladas, com inúmeras variedades de folhas, cores, formas, tamanhos.',
      diasParaCrescer: 70 ,
      imagemPlanta: 'assets/images/alface.png',
      planta: 'Alface',
      porcentagem: 80,
    ),
  ];

  final List<String> _statusRegador = ['Ativo', 'Inativo'];
  int _activeIndex = 0;
  TextEditingController _numeroSerieController = TextEditingController();

  TextEditingController _nomeIdentificacaoController = TextEditingController();

  TextEditingController _capacidadeRegadorController = TextEditingController();

  TextEditingController _nomeDaPlantaController = TextEditingController();
  TextEditingController _descricaoDaPlantaController = TextEditingController();
  TextEditingController _tempoAteColheitaController = TextEditingController();

  TimeOfDay _initialTimeWateringCan = const TimeOfDay(hour: 7, minute: 0);

  TimeOfDay _endTimeWateringCan = const TimeOfDay(hour: 19, minute: 0);

  bool _taHabilitadoRegador = false;
  bool _taHabilitadoPlanta = false;

  String _textoBotaoAdicionarRegador = 'Adicionar Regador';
  String _textoBotaoAdicionarPlanta = 'Adicionar Planta';

  final int _indexAtual = 0;
  final List<String> _listaImagens = const [
    'assets/images/alface.png',
    'assets/images/morango.png',
    'assets/images/tomate.png'
  ];
  final List<String> _listaNomePlantas = const [
    'Alface',
    'Morango',
    'Tomate',
  ];

  String? _plantaAtual = 'Alface';
  String? _imagemPlantaAtual = 'assets/images/alface.png';

  //Getters
  List<ModeloCardRegador> get listaRegadores => _listaRegadores;

  List<ModeloCardListaDePlantas> get listaPlantas => _listaPlantas;

  int get activeIndex => _activeIndex;

  TextEditingController get numeroSerieController => _numeroSerieController;

  TextEditingController get nomeIdentificacaoController =>
      _nomeIdentificacaoController;

  TextEditingController get capacidadeRegadorController =>
      _capacidadeRegadorController;

  TextEditingController get nomeDaPlantaController => _nomeDaPlantaController;

  TextEditingController get descricaoDaPlantaController =>
      _descricaoDaPlantaController;

  TextEditingController get tempoAteColheitaController =>
      _tempoAteColheitaController;

  TimeOfDay get initialTimeWateringCan => _initialTimeWateringCan;

  TimeOfDay get endTimeWateringCan => _endTimeWateringCan;

  bool get taHabilitadoRegador => _taHabilitadoRegador;

  bool get taHabilitadoPlanta => _taHabilitadoPlanta;

  String get textoBotaoAdicionarRegador => _textoBotaoAdicionarRegador;

  String get textoBotaoAdicionarPlanta => _textoBotaoAdicionarPlanta;

  int get indexAtual => _indexAtual;

  String get plantaAtual => _plantaAtual!;

  String get imagemPlantaAtual => _imagemPlantaAtual!;

  //Funções

  void setActiveIndex({required int index}) {
    _activeIndex = index;
    notifyListeners();
  }

  void setNewInitialTime({required BuildContext context}) async {
    TimeOfDay? newTime = await showTimePicker(
        context: context, initialTime: _initialTimeWateringCan);
    if (newTime != null) {
      _initialTimeWateringCan = newTime;
    }
    notifyListeners();
  }

  void setNewEndTime({required BuildContext context}) async {
    TimeOfDay? newTime = await showTimePicker(
        context: context, initialTime: _endTimeWateringCan);
    if (newTime != null) {
      _endTimeWateringCan = newTime;
    }
    notifyListeners();
  }

  void pegarControllerNumeroSerie({
    required TextEditingController controllerNumeroSerie,
  }) {
    _numeroSerieController = controllerNumeroSerie;
    habilitarBotaoAdicionarRegadores();
  }

  void pegarControllerNomeIdentificacao({
    required TextEditingController controllerNomeIdentificacao,
  }) {
    _nomeIdentificacaoController = controllerNomeIdentificacao;
    habilitarBotaoAdicionarRegadores();
  }

  void pegarControllerCapacidadeRegador({
    required TextEditingController controllerCapacidadeRegador,
  }) {
    _capacidadeRegadorController = controllerCapacidadeRegador;
    habilitarBotaoAdicionarRegadores();
  }

  void habilitarBotaoAdicionarRegadores() {
    if (_numeroSerieController.text.isNotEmpty &&
        _nomeIdentificacaoController.text.isNotEmpty &&
        _capacidadeRegadorController.text.isNotEmpty) {
      _taHabilitadoRegador = true;
    } else {
      _taHabilitadoRegador = false;
    }
    notifyListeners();
  }

  void habilitarBotaoAdicionarPlanta() {
    if (_nomeDaPlantaController.text.isNotEmpty &&
        _descricaoDaPlantaController.text.isNotEmpty &&
        _tempoAteColheitaController.text.isNotEmpty) {
      _taHabilitadoPlanta = true;
    } else {
      _taHabilitadoPlanta = false;
    }
    notifyListeners();
  }

  void resetarControllersRegador() {
    _numeroSerieController.clear();
    _nomeIdentificacaoController.clear();
    _capacidadeRegadorController.clear();
    habilitarBotaoAdicionarRegadores();
    notifyListeners();
  }

  void resetarControllersPlanta() {
    _nomeDaPlantaController.clear();
    _descricaoDaPlantaController.clear();
    _tempoAteColheitaController.clear();
    habilitarBotaoAdicionarPlanta();
    notifyListeners();
  }

  void adicionarRegador({required BuildContext context, int? index}) {
    if (index != null) {
      if (_numeroSerieController.text.isNotEmpty &&
          _nomeIdentificacaoController.text.isNotEmpty &&
          _capacidadeRegadorController.text.isNotEmpty) {
        _listaRegadores[index] = ModeloCardRegador(
          nomeRegador: _nomeIdentificacaoController.text,
          reservatorio: Random().nextInt(100),
          ultimaAtividade: DateTime.now(),
          statusRegador: _statusRegador[Random().nextInt(2)],
          horarioInicial: _initialTimeWateringCan,
          horarioFinal: _endTimeWateringCan,
          numeroSerie: _numeroSerieController.text,
          capacidadeRegador: _capacidadeRegadorController.text,
        );
      }
    } else {
      if (_numeroSerieController.text.isNotEmpty &&
          _nomeIdentificacaoController.text.isNotEmpty &&
          _capacidadeRegadorController.text.isNotEmpty) {
        _listaRegadores.add(
          ModeloCardRegador(
            nomeRegador: _nomeIdentificacaoController.text,
            reservatorio: Random().nextInt(100),
            ultimaAtividade: DateTime.now(),
            statusRegador: _statusRegador[Random().nextInt(2)],
            horarioInicial: _initialTimeWateringCan,
            horarioFinal: _endTimeWateringCan,
            numeroSerie: _numeroSerieController.text,
            capacidadeRegador: _capacidadeRegadorController.text,
          ),
        );
      }
    }
    resetarControllersRegador();
    notifyListeners();
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const HomePage(),
      ),
    );
  }

  void adicionarPlanta({
    required BuildContext context,
  }) {
    definirPlantaAtual();

    _listaPlantas.add(
      ModeloCardListaDePlantas(
        planta: _plantaAtual!,
        imagemPlanta: _imagemPlantaAtual!,
        diasParaCrescer: int.parse(_tempoAteColheitaController.text),
        porcentagem: Random().nextInt(100),
        descricao: _descricaoDaPlantaController.text,
      ),
    );
    resetarControllersPlanta();
    notifyListeners();
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const HomePage(),
      ),
    );
  }

  void carregarCamposTextoRegador(int index) {
    _numeroSerieController =
        TextEditingController(text: _listaRegadores[index].numeroSerie);
    _nomeIdentificacaoController =
        TextEditingController(text: _listaRegadores[index].nomeRegador);
    _capacidadeRegadorController =
        TextEditingController(text: _listaRegadores[index].capacidadeRegador);
    habilitarBotaoAdicionarRegadores();
    notifyListeners();
  }

  void carregarCamposTextoPlantas() {
    _nomeDaPlantaController =
        TextEditingController(text: _listaPlantas[0].planta);
    _descricaoDaPlantaController =
        TextEditingController(text: _listaPlantas[0].descricao);
    _tempoAteColheitaController = TextEditingController(
        text: _listaPlantas[0].diasParaCrescer.toString());
    habilitarBotaoAdicionarRegadores();
    notifyListeners();
  }

  void removerRegador(int index) {
    listaRegadores.removeAt(index);
    notifyListeners();
  }

  void removerUltimaPlanta() {
    _listaPlantas.removeLast();
    notifyListeners();
  }

  void atualizarNomeBotaoAdicionarRegador({required String nome}) {
    _textoBotaoAdicionarRegador = nome;
    notifyListeners();
  }

  void atualizarNomeBotaoAdicionarPlanta({required String nome}) {
    _textoBotaoAdicionarPlanta = nome;
    notifyListeners();
  }

  void definirPlantaAtual() {
    int random = Random().nextInt(3);
    _imagemPlantaAtual = _listaImagens[random];
    _plantaAtual = _listaNomePlantas[random];
    notifyListeners();
  }
}
