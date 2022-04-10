import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:regador_avaliacao/provider/regador_app_provider.dart';
import 'package:regador_avaliacao/ui/pages/add_watering_can_page/add_watering_can_page.dart';

class BotaoEditarRegador extends StatelessWidget {
  int index;

  BotaoEditarRegador({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<RegadorAppProvider>(builder: (context, provider, child) {
      return ElevatedButton(
        onPressed: () {
          provider.carregarCamposTextoRegador(
            index
          );
          provider.habilitarBotao();
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AddWateringCanPage(index: index),
            ),
          );
        },
        child: Text('Editar Regador'),
      );
    });
  }
}
