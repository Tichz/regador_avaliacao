import 'package:flutter/material.dart';
import 'package:regador_avaliacao/ui/styles/my_colors.dart';

class MyTextStyle {
  static TextStyle appBarTextStyle(
      {required BuildContext context, required bool isDark}) {
    return const TextStyle(
      color: MyColors.texto,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    );
  }
  static TextStyle greetingText(
      {required BuildContext context, required bool isDark}) {
    return const TextStyle(
      color: MyColors.texto,
      fontSize: 20,
      fontWeight: FontWeight.w700,
    );
  }
  static TextStyle userGreeting(
      {required BuildContext context, required bool isDark}) {
    return const TextStyle(
      color: MyColors.texto,
      fontSize: 20,
      fontWeight: FontWeight.normal,
    );
  }
  static TextStyle highlightedTextCard(
      {required BuildContext context, required bool isDark}) {
    return const TextStyle(
      color: MyColors.texto,
      fontSize: 14,
      fontWeight: FontWeight.bold,
    );
  }
  static TextStyle textCard(
      {required BuildContext context, required bool isDark}) {
    return const TextStyle(
      color: MyColors.texto,
      fontSize: 14,
      fontWeight: FontWeight.normal,
    );
  }
  static TextStyle hintTextFieldStyle(
      {required BuildContext context, required bool isDark}) {
    return const TextStyle(
      color: MyColors.corAcao,
      fontSize: 18,
      fontWeight: FontWeight.normal,
    );
  }
  static TextStyle titulosRegadorStyle(
      {required BuildContext context, required bool isDark}) {
    return const TextStyle(
      color: MyColors.texto,
      fontSize: 16,
      fontWeight: FontWeight.bold,
    );
  }static TextStyle conteudoRegadorStyle(
      {required BuildContext context, required bool isDark}) {
    return const TextStyle(
      color: MyColors.texto,
      fontSize: 16,
      fontWeight: FontWeight.normal,
    );
  }
  static TextStyle elevatedButtonStyle(
      {required BuildContext context, required bool isDark}) {
    return const TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
    );
  }static TextStyle statusRegadorStyle(
      {required BuildContext context, required bool isDark,required String statusRegador}) {
    return  TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
      color: statusRegador == 'Ativo' ? MyColors.corStatusAtivo : MyColors.corStatusInativo,
    );
  }
}
