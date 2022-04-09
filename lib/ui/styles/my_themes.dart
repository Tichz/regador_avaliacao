import 'package:flutter/material.dart';
import 'package:regador_avaliacao/ui/styles/my_colors.dart';
import 'package:regador_avaliacao/ui/styles/my_text_styles.dart';

class MyThemes {
  static ThemeData lightTheme(
      {required BuildContext context, required bool isDark}) {
    return ThemeData(
      primarySwatch: MyColors.primarySwatch,
      fontFamily: "OpenSans",
      scaffoldBackgroundColor: MyColors.corNeutra,
      appBarTheme: AppBarTheme(
        backgroundColor: MyColors.corNeutra,
        centerTitle: true,
        titleTextStyle:
            MyTextStyle.appBarTextStyle(context: context, isDark: false),
        elevation: 0,
        iconTheme: const IconThemeData(
          color: MyColors.texto,
        ),
      ),
      cardTheme: CardTheme(
        color: MyColors.corPrimaria,
        elevation: 1,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        border: InputBorder.none,
        hintStyle: MyTextStyle.hintTextFieldStyle(context: context, isDark: isDark),
      ),
    );
  }
}
