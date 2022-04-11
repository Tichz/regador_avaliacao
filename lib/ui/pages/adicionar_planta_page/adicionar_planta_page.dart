import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:regador_avaliacao/provider/regador_app_provider.dart';

import 'widgets/botao_adicionar_planta.dart';
import 'widgets/campo_de_texto_descricao_da_planta.dart';
import 'widgets/campo_de_texto_nome_da_planta.dart';
import 'widgets/campo_de_texto_tempo_ate_colheita.dart';

class AdicionarPlantaPage extends StatelessWidget {
  const AdicionarPlantaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<RegadorAppProvider>(builder: (context, provider, child) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Adicionar Planta'),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              provider.resetarControllersPlanta();
              Navigator.pop(context);
            },
          ),
        ),
        body: Consumer<RegadorAppProvider>(builder: (context, provider, child) {
          return Padding(
            padding: const EdgeInsets.fromLTRB(18, 20, 18, 0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  SizedBox(
                    height: 24,
                  ),
                  CampoDeTextoNomeDaPlanta(),
                  SizedBox(
                    height: 24,
                  ),
                  CampoDeTextoDescricaoDaPlanta(),
                  SizedBox(
                    height: 24,
                  ),
                  CampoDeTextoTempoAteColheita(),
                  SizedBox(
                    height: 24,
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  BotaoAdicionarPlanta(),
                ],
              ),
            ),
          );
        }),
      );
    });
  }
}
