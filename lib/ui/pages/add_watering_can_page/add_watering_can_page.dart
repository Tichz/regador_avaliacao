import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:regador_avaliacao/provider/regador_app_provider.dart';
import 'package:regador_avaliacao/ui/pages/add_plant_page/widgets/watering_can_illustration.dart';
import 'package:regador_avaliacao/ui/pages/widgets/end_time_watering_can.dart';
import 'package:regador_avaliacao/ui/pages/widgets/start_time_watering_can.dart';
import 'package:regador_avaliacao/ui/pages/widgets/my_text_field.dart';

class AddWateringCanPage extends StatelessWidget {
  TextEditingController _numeroSerieController = TextEditingController();
  TextEditingController _capacidadeRegador = TextEditingController();

  AddWateringCanPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Regador'),
      ),
      body: Consumer<RegadorAppProvider>(builder: (context, provider, child) {
        return Padding(
          padding: const EdgeInsets.fromLTRB(18, 20, 18, 0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                WateringCanIllustration(),
                SizedBox(
                  height: 24,
                ),
                MyTextField(
                  labelText: 'Número de Série:',
                    hintText: 'Número de série do regador',
                    controller: _numeroSerieController,
                  onChange: (_)=> provider.handlerNumeroSerieTextField(numeroSerieController: _numeroSerieController),
                ),
                SizedBox(
                  height: 24,
                ),
                MyTextField(
                  labelText: 'Capacidade do Regador:',
                  hintText: 'Informe a capacidade do regador',
                  controller: _capacidadeRegador,
                  onChange: (_)=> provider.handlerNumeroSerieTextField(numeroSerieController: _numeroSerieController),
                ),
                SizedBox(
                  height: 24,
                ),
                Row(
                  children: [
                    StartTimeWateringCan(),
                    Spacer(),
                    EndTimeWateringCan(),
                  ],
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
