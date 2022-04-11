import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:regador_avaliacao/provider/regador_app_provider.dart';
import 'package:regador_avaliacao/ui/pages/home_page/widgets/card_adicionar_planta.dart';
import 'package:regador_avaliacao/ui/pages/home_page/widgets/card_adicionar_regador.dart';
import 'package:regador_avaliacao/ui/pages/home_page/widgets/indicador_de_pagina.dart';
import 'package:regador_avaliacao/ui/pages/home_page/widgets/lista_plantas.dart';
import 'package:regador_avaliacao/ui/pages/home_page/widgets/lista_regador.dart';
import 'package:regador_avaliacao/ui/pages/home_page/widgets/texto_saldacao.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.menu,
          ),
          onPressed: () {},
        ),
        title: const Text('Home'),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(18, 20, 18, 0),
        child: SingleChildScrollView(
          child:
              Consumer<RegadorAppProvider>(builder: (context, provider, child) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                TextoSaldacao(),
                SizedBox(height: 8),
                CardAdicionarRegador(),
                SizedBox(height: 8),
                ListaRegador(),
                InicadorDePagina(),
                SizedBox(height: 16),
                ListaPlantas(),
                SizedBox(height: 16),
                CardAdicionarPlanta(),
              ],
            );
          }),
        ),
      ),
    );
  }
}
