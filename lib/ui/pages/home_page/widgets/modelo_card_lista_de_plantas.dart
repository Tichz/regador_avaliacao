import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:regador_avaliacao/provider/regador_app_provider.dart';
import 'package:regador_avaliacao/ui/pages/detalhes_planta_page/detalhes_planta_page.dart';
import 'package:regador_avaliacao/ui/styles/my_text_styles.dart';

class ModeloCardListaDePlantas extends StatelessWidget {
  final String planta;
  final int porcentagem;
  final int diasParaCrescer;
  final String imagemPlanta;
  final String descricao;

  const ModeloCardListaDePlantas({
    Key? key,
    required this.planta,
    required this.imagemPlanta,
    required this.diasParaCrescer,
    required this.porcentagem,
    required this.descricao,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<RegadorAppProvider>(builder: (context, provider, child) {
      return Card(
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const DetalhesPlantaPage(),
              ),
            );
          },
          onLongPress: () {
            provider.removerUltimaPlanta();
          },
          borderRadius: BorderRadius.circular(20),
          child: Container(
            height: 120,
            width: double.maxFinite,
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
            child: Row(
              children: [
                Image.asset(
                  imagemPlanta,
                  height: 60,
                  width: 80,
                ),
                const SizedBox(
                  width: 24,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Text(
                          planta,
                          style: MyTextStyle.tituloCardPlantaStyle(
                            context: context,
                            
                          ),
                        ),
                        const SizedBox(width: 16),
                        Text(
                          '$porcentagem%',
                          style: MyTextStyle.porcentagemCardPlantaStyle(
                            context: context,
                            
                          ),
                        ),
                      ],
                    ),
                    Text(
                      '$diasParaCrescer Dias para colheita',
                      style: MyTextStyle.textoCorpoCardPlantaStyle(
                        context: context,
                        
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
