import 'package:flutter/material.dart';
import 'package:regador_avaliacao/ui/pages/home_page/widgets/add_plant.dart';
import 'package:regador_avaliacao/ui/pages/home_page/widgets/card_add_regador.dart';
import 'package:regador_avaliacao/ui/pages/home_page/widgets/dot_indicator.dart';
import 'package:regador_avaliacao/ui/pages/home_page/widgets/regador_list_view.dart';
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              TextoSaldacao(),
              SizedBox(height: 16),
              CardAddRegador(),
              SizedBox(height: 8),
              RegadorListView(),
              DotIndicator(),
              SizedBox(height: 16),
              AddPlant(),
            ],
          ),
        ),
      ),
    );
  }
}
