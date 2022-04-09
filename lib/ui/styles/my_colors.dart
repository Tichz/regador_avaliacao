import 'package:flutter/material.dart';

class MyColors{
  static const  corNeutra = Color(0xffF0F1F3);
  static const  texto = Color(0xff333738);
  static const  corPrimaria = Color(0xffF9FBFA);
  static const  corAcao= Color(0xff025951);
  static const  corInativo= Color(0xff9197A8);

  static const  primarySwatch =  MaterialColor(
    0xff025951, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    <int, Color>{
      50:  Color(0xff025049),//10%
      100:  Color(0xff024741),//20%
      200:  Color(0xff013e39),//30%
      300:  Color(0xff013531),//40%
      400:  Color(0xff012d29),//50%
      500:  Color(0xff012420),//60%
      600:  Color(0xff011b18),//70%
      700:  Color(0xff001210),//80%
      800:  Color(0xff000908),//90%
      900:  Color(0xff000000),//100%
    },
  );
}