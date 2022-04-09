import 'package:flutter/material.dart';
import 'package:regador_avaliacao/regador_app.dart';
import 'package:regador_avaliacao/ui/pages/home_page/widgets/model_card_regador_listview.dart';

class RegadorAppProvider extends ChangeNotifier {
  List<CardRegador> _listaRegadores = [
    CardRegador(
      nomeRegador: 'Regador Alfaces',
      capacidadeRegador: 70,
      ultimaAtividade: DateTime.now(),
    ),
    CardRegador(
      nomeRegador: 'Regador Ruculas',
      capacidadeRegador: 50,
      ultimaAtividade: DateTime.now(),
    ),
    CardRegador(
      nomeRegador: 'Regador Tomates',
      capacidadeRegador: 20,
      ultimaAtividade: DateTime.now(),
    ),
  ];
  int _activeIndex = 0;
  late TextEditingController _numeroSerieController;

  TimeOfDay _initialTimeWateringCan = TimeOfDay(hour: 7, minute: 0);

  TimeOfDay _endTimeWateringCan = TimeOfDay(hour: 19, minute: 0);

  List<CardRegador> get listaRegadores => _listaRegadores;

  int get activeIndex => _activeIndex;

  TextEditingController get numeroSerieController => _numeroSerieController;

  TimeOfDay get initialTimeWateringCan => _initialTimeWateringCan;

  TimeOfDay get endTimeWateringCan => _endTimeWateringCan;

  void setActiveIndex({required int index}) {
    print(_activeIndex);
    _activeIndex = index;
    print(_activeIndex);
    notifyListeners();
  }

  void handlerNumeroSerieTextField(
      {required TextEditingController numeroSerieController}) {
    print(numeroSerieController.text);
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
}
