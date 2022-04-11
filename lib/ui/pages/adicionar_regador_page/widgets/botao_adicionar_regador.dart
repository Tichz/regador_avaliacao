import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:regador_avaliacao/provider/regador_app_provider.dart';

class BotaoAdicionarRegador extends StatelessWidget {
  final int? index;

  const BotaoAdicionarRegador({Key? key, this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<RegadorAppProvider>(builder: (context, provider, child) {
      return ElevatedButton(
        onPressed: provider.taHabilitadoRegador
            ? () {
                provider.adicionarRegador(context: context, index: index);
              }
            : null,
        child: Text(provider.textoBotaoAdicionarRegador),
      );
    });
  }
}
