import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:regador_avaliacao/ui/styles/my_colors.dart';
import 'package:regador_avaliacao/ui/styles/my_text_styles.dart';

class ModeloCardRegador extends StatelessWidget {
  final String nomeRegador;
  final int reservatorio;
  final DateTime ultimaAtividade;
  final String statusRegador;
  final TimeOfDay horarioInicial;
  final TimeOfDay horarioFinal;
  final String numeroSerie;
  final String capacidadeRegador;

  const ModeloCardRegador({
    Key? key,
    required this.nomeRegador,
    required this.reservatorio,
    required this.ultimaAtividade,
    required this.statusRegador,
    required this.horarioInicial,
    required this.horarioFinal,
    required this.numeroSerie,
    required this.capacidadeRegador,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        margin: const EdgeInsets.all(8),
        height: 140,
        width: double.maxFinite,
        child: Row(
          children: [
            const SizedBox(
              width: 20,
            ),
            Column(
              children: [
                SvgPicture.asset(
                  'assets/images/regador.svg',
                  height: 80,
                  color: MyColors.corAcao,
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  statusRegador,
                  style: MyTextStyle.statusRegadorStyle(
                    context: context,
                    
                    statusRegador: statusRegador,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Nome Regador:',
                    style: MyTextStyle.highlightedTextCard(
                        context: context),
                  ),
                  Text(
                    nomeRegador,
                    style:
                        MyTextStyle.textCard(context: context),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Reservatório:',
                    style: MyTextStyle.highlightedTextCard(
                        context: context),
                  ),
                  Text(
                    '$reservatorio%',
                    style:
                        MyTextStyle.textCard(context: context),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Última atividade:',
                    style: MyTextStyle.highlightedTextCard(
                        context: context),
                  ),
                  Text(
                    DateFormat('hh:mm a').format(ultimaAtividade),
                    style:
                        MyTextStyle.textCard(context: context),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
