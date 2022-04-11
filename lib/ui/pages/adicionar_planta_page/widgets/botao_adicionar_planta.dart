import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:regador_avaliacao/provider/regador_app_provider.dart';

class BotaoAdicionarPlanta extends StatelessWidget {
  const BotaoAdicionarPlanta({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<RegadorAppProvider>(builder: (context, provider, child) {
      return ElevatedButton(
        onPressed: provider.taHabilitadoPlanta
            ? () {
                provider.adicionarPlanta(context: context);
              }
            : null,
        child: Text(provider.textoBotaoAdicionarPlanta),
      );
    });
  }
}
