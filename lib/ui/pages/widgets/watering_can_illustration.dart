import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:regador_avaliacao/ui/styles/my_colors.dart';

class WateringCanIllustration extends StatelessWidget {
  const WateringCanIllustration({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SvgPicture.asset(
        'assets/images/regador.svg',
        width: 120,
        alignment: Alignment.center,
        color: MyColors.corAcao,
      ),
    );
  }
}
