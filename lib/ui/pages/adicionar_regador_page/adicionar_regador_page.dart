import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:regador_avaliacao/provider/regador_app_provider.dart';

import 'widgets/botao_adicionar_regador.dart';
import 'widgets/capacidade_regador_text_field.dart';
import 'widgets/horario_final_regador.dart';
import 'widgets/nome_identificacao_text_field.dart';
import 'widgets/numero_serie_text_field.dart';
import 'widgets/horario_inicial_regador.dart';

class AdicionarRegadorPage extends StatelessWidget {
  final int? index;

 const AdicionarRegadorPage({Key? key, this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<RegadorAppProvider>(
        builder: (context, provider, child) {
          return Scaffold(
          appBar: AppBar(
            title: const Text('Adicionar Regador'),
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                provider.resetarControllersRegador();
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
                  children: [
                    const SizedBox(
                      height: 24,
                    ),
                    const NumeroSerieTextField(),
                    const SizedBox(
                      height: 24,
                    ),
                    const NomeIdentificacaoTextField(),
                    const SizedBox(
                      height: 24,
                    ),
                    const CapacidadeRegadorTextField(),
                    const SizedBox(
                      height: 24,
                    ),
                    Row(
                      children: const [
                        HorarioInicialRegador(),
                        Spacer(),
                        HorarioFinalRegador(),
                      ],
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    BotaoAdicionarRegador(index: index),
                  ],
                ),
              ),
            );
          }),
        );
      }
    );
  }
}
