import 'package:flutter/material.dart';
import 'package:regador_avaliacao/ui/styles/my_colors.dart';
import 'package:regador_avaliacao/ui/styles/my_text_styles.dart';

class MyTextField extends StatelessWidget {
  String hintText;
  String labelText;
  TextEditingController controller = TextEditingController();
  Function(String) onChange;

  MyTextField(
      {Key? key,
      required this.hintText,
      required this.controller,
      required this.onChange,
      required this.labelText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelText,
          style:
              MyTextStyle.labelTextFieldStyle(context: context, isDark: false),
        ),
        SizedBox(
          // height: 40,
          child: TextField(
            decoration: InputDecoration(hintText: hintText),
            controller: controller,
            onChanged: onChange,
            style: MyTextStyle.hintTextFieldStyle(context: context, isDark: false),
            cursorColor: MyColors.corAcao,

          ),
        ),
      ],
    );
  }
}
