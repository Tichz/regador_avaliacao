import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:regador_avaliacao/provider/regador_app_provider.dart';

import '../../adicionar_regador_page/adicionar_regador_page.dart';

class BotaoEditarRegador extends StatelessWidget {
  final int index;

  const BotaoEditarRegador({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<RegadorAppProvider>(builder: (context, provider, child) {
      return ElevatedButton(
        onPressed: () {
          provider.carregarCamposTextoRegador(index);
          provider.habilitarBotaoAdicionarRegadores();
          provider.atualizarNomeBotaoAdicionarRegador(
              nome: 'Atualizar Regador');
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AdicionarRegadorPage(index: index),
            ),
          );
        },
        child: const Text('Editar Regador'),
      );
    });
  }
}
