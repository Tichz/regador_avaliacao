import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:regador_avaliacao/provider/regador_app_provider.dart';
import 'package:regador_avaliacao/ui/styles/my_colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class InicadorDePagina extends StatelessWidget {
  const InicadorDePagina({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<RegadorAppProvider>(
      builder: (context, provider, child) {
        return Visibility(
          visible: provider.listaRegadores.isNotEmpty,
          child: Center(
            child: AnimatedSmoothIndicator(
              activeIndex: provider.activeIndex,
              count: provider.listaRegadores.length,
              effect: const WormEffect(
                dotHeight: 10,
                dotWidth: 10,
                dotColor: MyColors.corInativo,
                activeDotColor: MyColors.corAcao
              ),
            ),
          ),
        );
      },
    );
  }
}
