import 'package:flutter/material.dart';
import 'package:regador_avaliacao/ui/styles/my_text_styles.dart';

class TextoSaldacao extends StatelessWidget {
  const TextoSaldacao({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Bem-vindo',
          style: MyTextStyle.greetingText(context: context),
        ),
        Text(
          'Josué',
          style: MyTextStyle.userGreeting(context: context),
        ),
      ],
    );
  }
}
