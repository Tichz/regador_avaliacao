import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:regador_avaliacao/provider/regador_app_provider.dart';
import 'package:regador_avaliacao/ui/styles/my_colors.dart';
import 'package:regador_avaliacao/ui/styles/my_text_styles.dart';

class NumeroSerieTextField extends StatefulWidget {
  const NumeroSerieTextField({Key? key}) : super(key: key);

  @override
  State<NumeroSerieTextField> createState() => _NumeroSerieTextFieldState();
}

class _NumeroSerieTextFieldState extends State<NumeroSerieTextField> {
  @override
  void initState() {
    Provider.of<RegadorAppProvider>(context, listen: false);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<RegadorAppProvider>(builder: (context, provider, child) {
      return TextField(
        decoration: InputDecoration(
          hintText: 'Número de Série',
        ),
        keyboardType: TextInputType.numberWithOptions(decimal: false,signed: false),
        textInputAction: TextInputAction.next,
        controller: provider.numeroSerieController,
        onChanged: (_) {
          // provider.pegarControllerNumeroSerie(
          //   controllerNumeroSerie: _numeroSerieController,
          // );
          provider.habilitarBotao();
        },
        style: MyTextStyle.hintTextFieldStyle(context: context, isDark: false),
        cursorColor: MyColors.corAcao,
      );
    });
  }
}
