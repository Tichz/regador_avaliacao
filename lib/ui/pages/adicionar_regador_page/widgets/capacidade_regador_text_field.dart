import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:regador_avaliacao/provider/regador_app_provider.dart';
import 'package:regador_avaliacao/ui/styles/my_colors.dart';
import 'package:regador_avaliacao/ui/styles/my_text_styles.dart';

class CapacidadeRegadorTextField extends StatefulWidget {
  const CapacidadeRegadorTextField({Key? key}) : super(key: key);

  @override
  State<CapacidadeRegadorTextField> createState() =>
      _CapacidadeRegadorTextFieldState();
}

class _CapacidadeRegadorTextFieldState
    extends State<CapacidadeRegadorTextField> {

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
          hintText: 'Informe a capacidade',
        ),
        keyboardType:
            const TextInputType.numberWithOptions(decimal: false, signed: false),
        controller: provider.capacidadeRegadorController ,
        onChanged: (_) {
          // provider.capacidadeRegadorController
          // provider.pegarControllerCapacidadeRegador(
          //   controllerCapacidadeRegador: _capacidadeRegadorController,
          // );
          provider.habilitarBotaoAdicionarRegadores();
        },
        style: MyTextStyle.hintTextFieldStyle(context: context),
        cursorColor: MyColors.corAcao,
      );
    });
  }
}
