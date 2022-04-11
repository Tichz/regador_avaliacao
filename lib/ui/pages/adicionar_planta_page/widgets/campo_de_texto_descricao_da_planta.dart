import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:regador_avaliacao/provider/regador_app_provider.dart';
import 'package:regador_avaliacao/ui/styles/my_colors.dart';
import 'package:regador_avaliacao/ui/styles/my_text_styles.dart';

class CampoDeTextoDescricaoDaPlanta extends StatefulWidget {
  const CampoDeTextoDescricaoDaPlanta({Key? key}) : super(key: key);

  @override
  State<CampoDeTextoDescricaoDaPlanta> createState() =>
      _CampoDeTextoDescricaoDaPlantaState();
}

class _CampoDeTextoDescricaoDaPlantaState
    extends State<CampoDeTextoDescricaoDaPlanta> {
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
          hintText: 'Descrição',
        ),
        keyboardType: TextInputType.name,
        textInputAction: TextInputAction.next,
        controller: provider.descricaoDaPlantaController,
        onChanged: (_) {
          provider.habilitarBotaoAdicionarPlanta();
        },
        style: MyTextStyle.hintTextFieldStyle(context: context),
        cursorColor: MyColors.corAcao,
      );
    });
  }
}
