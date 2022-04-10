import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:regador_avaliacao/provider/regador_app_provider.dart';
import 'package:regador_avaliacao/ui/styles/my_colors.dart';
import 'package:regador_avaliacao/ui/styles/my_text_styles.dart';

class NomeIdentificacaoTextField extends StatefulWidget {
  const NomeIdentificacaoTextField({Key? key}) : super(key: key);

  @override
  State<NomeIdentificacaoTextField> createState() =>
      _NomeIdentificacaoTextFieldState();
}

class _NomeIdentificacaoTextFieldState
    extends State<NomeIdentificacaoTextField> {
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
          hintText: 'De um nome de identificação',
        ),
        keyboardType: TextInputType.name,
        textInputAction: TextInputAction.next,
        controller: provider.nomeIdentificacaoController,
        onChanged: (_) {
          // provider.pegarControllerNomeIdentificacao(
          //   controllerNomeIdentificacao:  _nomeIdentificacaoController,
          // );
          provider.habilitarBotao();
        },
        style: MyTextStyle.hintTextFieldStyle(context: context, isDark: false),
        cursorColor: MyColors.corAcao,
      );
    });
  }
}
