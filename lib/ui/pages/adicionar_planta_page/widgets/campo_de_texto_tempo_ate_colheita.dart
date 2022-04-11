import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:regador_avaliacao/provider/regador_app_provider.dart';
import 'package:regador_avaliacao/ui/styles/my_colors.dart';
import 'package:regador_avaliacao/ui/styles/my_text_styles.dart';

class CampoDeTextoTempoAteColheita extends StatefulWidget {
  const CampoDeTextoTempoAteColheita({Key? key}) : super(key: key);

  @override
  State<CampoDeTextoTempoAteColheita> createState() => _CampoDeTextoTempoAteColheitaState();
}

class _CampoDeTextoTempoAteColheitaState extends State<CampoDeTextoTempoAteColheita> {
  @override
  void initState() {
    Provider.of<RegadorAppProvider>(context, listen: false);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<RegadorAppProvider>(builder: (context, provider, child) {
      return TextField(
        decoration: const InputDecoration(
          hintText: 'Tempo até colheita',
        ),
        keyboardType:
        const TextInputType.numberWithOptions(decimal: false, signed: false),
        textInputAction: TextInputAction.done,
        controller: provider.tempoAteColheitaController,
        onChanged: (_) {
          provider.habilitarBotaoAdicionarPlanta();
        },
        style: MyTextStyle.hintTextFieldStyle(context: context),
        cursorColor: MyColors.corAcao,
      );
    });
  }
}
