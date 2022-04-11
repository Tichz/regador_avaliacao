import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:regador_avaliacao/provider/regador_app_provider.dart';
import 'package:regador_avaliacao/ui/styles/my_colors.dart';

import '../../adicionar_planta_page/adicionar_planta_page.dart';

class CardAdicionarPlanta extends StatelessWidget {
  const CardAdicionarPlanta({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<RegadorAppProvider>(builder: (context, provider, child) {
      return Card(
        child: InkWell(
          onTap: () {
            provider.atualizarNomeBotaoAdicionarPlanta(nome: 'Adicionar Planta');
            provider.resetarControllersPlanta();
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => const AdicionarPlantaPage(),
              ),
            );
          },
          borderRadius: BorderRadius.circular(20),
          child: SizedBox(
            height: 120,
            width: double.maxFinite,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SvgPicture.asset(
                  'assets/images/add_plant.svg',
                  height: 60,
                  color: MyColors.corAcao,
                ),
                const Text('Adicionar Planta')
              ],
            ),
          ),
        ),
      );
    });
  }
}
