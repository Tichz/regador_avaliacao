import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:regador_avaliacao/provider/regador_app_provider.dart';
import 'package:regador_avaliacao/ui/styles/my_text_styles.dart';

class HorarioFinalRegador extends StatelessWidget {
  const HorarioFinalRegador({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Consumer<RegadorAppProvider>(builder: (context, provider, child) {
      return
        InkWell(
          onTap: () {
            provider.setNewEndTime(context: context);
          },
          child: Column(
            children: [
              Text(
                'Horário Final',
                style: MyTextStyle.titulosRegadorStyle(
                    context: context),
              ),
              Text(
                provider.endTimeWateringCan.format(context),
                style: MyTextStyle.hintTextFieldStyle(
                    context: context),
              ),
            ],
          ),
        );
    });
  }
}
