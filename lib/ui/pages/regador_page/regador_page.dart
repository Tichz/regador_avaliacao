import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:regador_avaliacao/provider/regador_app_provider.dart';
import 'package:regador_avaliacao/ui/pages/add_watering_can_page/add_watering_can_page.dart';
import 'package:regador_avaliacao/ui/pages/home_page/home_page.dart';
import 'package:regador_avaliacao/ui/pages/regador_page/widget/botao_editar_regador.dart';
import 'package:regador_avaliacao/ui/pages/widgets/info_texto.dart';
import 'package:regador_avaliacao/ui/pages/widgets/watering_can_illustration.dart';

class RegadorPage extends StatelessWidget {
  int index;

  RegadorPage({Key? key, required this.index}) : super(key: key);

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
          body: Padding(
            padding: const EdgeInsets.fromLTRB(18, 20, 18, 0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const WateringCanIllustration(),
                  const SizedBox(
                    height: 48,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InfoTexto(
                        titulo: 'Número de Série:',
                        conteudo: provider.listaRegadores[index].numeroSerie,
                      ),
                      InfoTexto(
                        titulo: 'Reservatorio:',
                        conteudo:
                            '${provider.listaRegadores[index].reservatorio}%',
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InfoTexto(
                        titulo: 'Nome do regador:',
                        conteudo: provider.listaRegadores[index].nomeRegador,
                      ),
                      InfoTexto(
                        titulo: 'Status Regador:',
                        conteudo: provider.listaRegadores[index].statusRegador,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InfoTexto(
                        titulo: 'Capacidade Regador:',
                        conteudo:
                            '${provider.listaRegadores[index].reservatorio.toString()}%',
                      ),
                      InfoTexto(
                        titulo: 'Ultima Atividade:',
                        conteudo: DateFormat('hh:mm a').format(
                            provider.listaRegadores[index].ultimaAtividade),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InfoTexto(
                        titulo: 'Horário Inicial:',
                        conteudo: provider.listaRegadores[index].horarioInicial
                            .format(context),
                      ),
                      InfoTexto(
                        titulo: 'Horário Final:',
                        conteudo: provider.listaRegadores[index].horarioFinal
                            .format(context),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  BotaoEditarRegador(index: index),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
