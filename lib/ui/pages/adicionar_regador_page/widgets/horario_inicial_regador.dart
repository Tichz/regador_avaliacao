import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:regador_avaliacao/provider/regador_app_provider.dart';
import 'package:regador_avaliacao/ui/styles/my_text_styles.dart';

class HorarioInicialRegador extends StatelessWidget {
  const HorarioInicialRegador({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Consumer<RegadorAppProvider>(builder: (context, provider, child) {
      return
        InkWell(
        onTap: () {
          provider.setNewInitialTime(context: context);
        },
        child: Align(
          alignment: Alignment.centerLeft,
          child: Column(
            children: [
              Text(
                'Horário Inicial',
                style: MyTextStyle.titulosRegadorStyle(
                    context: context),
              ),
              Text(
                provider.initialTimeWateringCan.format(context),
                style: MyTextStyle.hintTextFieldStyle(
                    context: context),
              ),
            ],
          ),
        ),
      );
    });
  }
}
