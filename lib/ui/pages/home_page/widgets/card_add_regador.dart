import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:regador_avaliacao/ui/pages/add_watering_can_page/add_watering_can_page.dart';
import 'package:regador_avaliacao/ui/styles/my_colors.dart';

class CardAddRegador extends StatelessWidget {
  const CardAddRegador({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) =>  AddWateringCanPage(),
            ),
          );
        },
        borderRadius: BorderRadius.circular(20),
        child: Container(
          height: 120,
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SvgPicture.asset(
                'assets/images/add regador.svg',
                height: 60,
                color: MyColors.corAcao,
              ),
              const Text('Adicionar Regador')
            ],
          ),
        ),
      ),
    );
  }
}
