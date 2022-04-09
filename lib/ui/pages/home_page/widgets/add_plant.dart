import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:regador_avaliacao/ui/pages/add_plant_page/add_plant_page.dart';
import 'package:regador_avaliacao/ui/styles/my_colors.dart';

class AddPlant extends StatelessWidget {
  const AddPlant({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) => const AddPlantPage(),
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
                'assets/images/add_plant.svg',
                height: 60,
                color: MyColors.corAcao,
              ),
              Text('Adicionar Planta')
            ],
          ),
        ),
      ),
    );
  }
}
