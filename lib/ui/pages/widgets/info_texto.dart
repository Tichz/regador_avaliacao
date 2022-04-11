import 'package:flutter/material.dart';
import 'package:regador_avaliacao/ui/styles/my_text_styles.dart';

class InfoTexto extends StatelessWidget {
  String titulo;
  String conteudo;

  InfoTexto({Key? key, required this.titulo,required this.conteudo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          titulo,
          style: MyTextStyle.titulosRegadorStyle(context: context),
        ), Text(

          conteudo,
          style: MyTextStyle.conteudoRegadorStyle(context: context),
        ),
      ],
    );
  }
}
