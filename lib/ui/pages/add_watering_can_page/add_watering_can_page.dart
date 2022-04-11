import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:regador_avaliacao/provider/regador_app_provider.dart';
import 'package:regador_avaliacao/ui/pages/add_watering_can_page/widgets/botao_adicionar_regador.dart';
import 'package:regador_avaliacao/ui/pages/add_watering_can_page/widgets/capacidade_regador_text_field.dart';
import 'package:regador_avaliacao/ui/pages/add_watering_can_page/widgets/end_time_watering_can.dart';
import 'package:regador_avaliacao/ui/pages/add_watering_can_page/widgets/nome_identificacao_text_field.dart';
import 'package:regador_avaliacao/ui/pages/add_watering_can_page/widgets/numero_serie_text_field.dart';
import 'package:regador_avaliacao/ui/pages/add_watering_can_page/widgets/start_time_watering_can.dart';

class AddWateringCanPage extends StatelessWidget {
  int? index;

  AddWateringCanPage({Key? key, int? this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<RegadorAppProvider>(
        builder: (context, provider, child) {
          return Scaffold(
          appBar: AppBar(
            title: const Text('Regador'),
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                provider.resetarControllers();
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
                    // const WateringCanIllustration(),
                    const SizedBox(
                      height: 24,
                    ),
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
                        StartTimeWateringCan(),
                        Spacer(),
                        EndTimeWateringCan(),
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
