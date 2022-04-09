import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:regador_avaliacao/provider/regador_app_provider.dart';

class RegadorListView extends StatelessWidget {
  const RegadorListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<RegadorAppProvider>(builder: (context, provider, child) {
      return CarouselSlider.builder(
        itemCount: provider.listaRegadores.length,
        options: CarouselOptions(
            height: 154,
            viewportFraction: 1,
            autoPlay: true,
            autoPlayAnimationDuration: const Duration(seconds: 5),
            onPageChanged: (index, reason) {
              provider.setActiveIndex(index: index);
            }),
        itemBuilder: (context, index, realIndex) {
          final regador = provider.listaRegadores[index];

          return regador;
        },
      );
    });
  }
}
