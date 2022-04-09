import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:regador_avaliacao/ui/styles/my_colors.dart';
import 'package:regador_avaliacao/ui/styles/my_text_styles.dart';

class CardRegador extends StatelessWidget {
  String nomeRegador;
  int capacidadeRegador;
  DateTime ultimaAtividade;

  CardRegador({
    Key? key,
    required this.nomeRegador,
    required this.capacidadeRegador,
    required this.ultimaAtividade,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(20),
        child: Container(
          margin: EdgeInsets.all(8),
          height: 140,
          width: double.maxFinite,
          child: Row(
            children: [
              SizedBox(
                width: 20,
              ),
              SvgPicture.asset(
                'assets/images/regador.svg',
                height: 80,
                color: MyColors.corAcao,
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
                          context: context, isDark: false),
                    ),
                    Text(
                      nomeRegador,
                      style:
                          MyTextStyle.textCard(context: context, isDark: false),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Reservatório:',
                      style: MyTextStyle.highlightedTextCard(
                          context: context, isDark: false),
                    ),
                    Text(
                      '$capacidadeRegador%',
                      style:
                          MyTextStyle.textCard(context: context, isDark: false),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Última atividade:',
                      style: MyTextStyle.highlightedTextCard(
                          context: context, isDark: false),
                    ),
                    Text(
                      '${DateFormat('hh:mm a').format(ultimaAtividade)}',
                      style:
                          MyTextStyle.textCard(context: context, isDark: false),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
