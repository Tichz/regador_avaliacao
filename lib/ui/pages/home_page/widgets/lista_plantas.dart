import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:regador_avaliacao/provider/regador_app_provider.dart';

class ListaPlantas extends StatelessWidget {
  const ListaPlantas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<RegadorAppProvider>(
      builder: (context, provider, child) {
        return Column(
          children: provider.listaPlantas,
        );
      },
    );
  }
}
