import 'package:flutter/material.dart';
import 'package:regador_avaliacao/ui/pages/home_page/home_page.dart';
import 'package:regador_avaliacao/ui/pages/home_page/widgets/model_card_regador_listview.dart';
import 'dart:math';

import 'package:regador_avaliacao/ui/pages/regador_page/regador_page.dart';

class RegadorAppProvider extends ChangeNotifier {
  // Variáveis
  final List<CardRegador> _listaRegadores = [];

  final List<String> _statusRegador = ['Ativo', 'Inativo'];
  int _activeIndex = 0;
  TextEditingController _numeroSerieController = TextEditingController();

  TextEditingController _nomeIdentificacaoController = TextEditingController();

  TextEditingController _capacidadeRegadorController = TextEditingController();

  TimeOfDay _initialTimeWateringCan = TimeOfDay(hour: 7, minute: 0);

  TimeOfDay _endTimeWateringCan = TimeOfDay(hour: 19, minute: 0);

  bool _taHabilitado = false;

  //Getters
  List<CardRegador> get listaRegadores => _listaRegadores;

  int get activeIndex => _activeIndex;

  TextEditingController get numeroSerieController => _numeroSerieController;

  TextEditingController get nomeIdentificacaoController =>
      _nomeIdentificacaoController;

  TextEditingController get capacidadeRegadorController =>
      _capacidadeRegadorController;

  TimeOfDay get initialTimeWateringCan => _initialTimeWateringCan;

  TimeOfDay get endTimeWateringCan => _endTimeWateringCan;

  bool get taHabilitado => _taHabilitado;

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
    habilitarBotao();
  }

  void pegarControllerNomeIdentificacao({
    required TextEditingController controllerNomeIdentificacao,
  }) {
    _nomeIdentificacaoController = controllerNomeIdentificacao;
    habilitarBotao();
  }

  void pegarControllerCapacidadeRegador({
    required TextEditingController controllerCapacidadeRegador,
  }) {
    _capacidadeRegadorController = controllerCapacidadeRegador;
    habilitarBotao();
  }

  void habilitarBotao() {
    if (_numeroSerieController.text.isNotEmpty &&
        _nomeIdentificacaoController.text.isNotEmpty &&
        _capacidadeRegadorController.text.isNotEmpty) {
      _taHabilitado = true;
    } else {
      _taHabilitado = false;
    }
    notifyListeners();
  }

  void resetarControllers() {
    _numeroSerieController.clear();
    _nomeIdentificacaoController.clear();
    _capacidadeRegadorController.clear();
    habilitarBotao();
    notifyListeners();
  }

  void adicionarRegador({required BuildContext context, int? index}) {
    if (index != null) {
      if (_numeroSerieController.text.isNotEmpty &&
          _nomeIdentificacaoController.text.isNotEmpty &&
          _capacidadeRegadorController.text.isNotEmpty) {
        _listaRegadores[index] = CardRegador(
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
          CardRegador(
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
    resetarControllers();
    notifyListeners();
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => HomePage(),
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
    habilitarBotao();
    notifyListeners();
  }
  void removerRegador(int index){
    listaRegadores.removeAt(index);
    notifyListeners();
  }
}
