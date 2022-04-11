import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:regador_avaliacao/provider/regador_app_provider.dart';
import 'package:regador_avaliacao/ui/pages/adicionar_planta_page/adicionar_planta_page.dart';

class BotaoEditarPlantas extends StatelessWidget {
  const BotaoEditarPlantas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<RegadorAppProvider>(builder: (context, provider, child) {
      return ElevatedButton(
        onPressed: () {
          provider.carregarCamposTextoPlantas();
          provider.habilitarBotaoAdicionarPlanta();
          provider.atualizarNomeBotaoAdicionarPlanta(nome: 'Atualizar Planta');
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const AdicionarPlantaPage(),
            ),
          );
        },
        child: const Text('Editar Planta'),
      );
    });
  }
}
