import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:regador_avaliacao/provider/regador_app_provider.dart';
import 'package:regador_avaliacao/ui/pages/detalhes_planta_page/widget/botao_editar_plantas.dart';
import 'package:regador_avaliacao/ui/pages/widgets/info_texto.dart';
import 'package:regador_avaliacao/ui/styles/my_text_styles.dart';

class DetalhesPlantaPage extends StatelessWidget {
  const DetalhesPlantaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<RegadorAppProvider>(
      builder: (context, provider, child) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Detalhes Planta'),
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                provider.resetarControllersRegador();
                Navigator.pop(context);
              },
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.fromLTRB(18, 20, 18, 0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 48,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InfoTexto(
                        titulo: 'Nome da Planta:',
                        conteudo: provider.listaPlantas[0].planta,
                      ),
                      InfoTexto(
                        titulo: 'Dias para colher:',
                        conteudo: '${provider.listaPlantas[0].diasParaCrescer}',
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
                        titulo: 'Capacidade do reservatório:',
                        conteudo: '${provider.listaPlantas[0].porcentagem}%',
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Text(
                    'Descrição',
                    style: MyTextStyle.titulosRegadorStyle(
                        context: context),
                  ),
                  Text(
                    provider.listaPlantas[0].descricao,
                    style: MyTextStyle.conteudoRegadorStyle(
                        context: context),
                  ),
                  const SizedBox(
                    height: 48,
                  ),
                  const BotaoEditarPlantas(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
