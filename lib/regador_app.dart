import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:regador_avaliacao/provider/regador_app_provider.dart';
import 'package:regador_avaliacao/ui/pages/home_page/home_page.dart';
import 'package:regador_avaliacao/ui/styles/my_themes.dart';

class RegadorApp extends StatelessWidget {
  const RegadorApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<RegadorAppProvider>(
          create: (context) => RegadorAppProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Regador App',
        theme: MyThemes.lightTheme(context: context),
        home: const HomePage(),
      ),
    );
  }
}
