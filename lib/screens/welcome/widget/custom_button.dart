import 'package:flutter/material.dart';
import 'package:shop_sprints/constants/fonts.dart';

import '../../../constants/color.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final WidgetStateProperty<Color?>? backgroundColor;
  final VoidCallback onPressed;
  final TextStyle? style;
  const CustomButton({required this.text, required this.onPressed, this.backgroundColor, this.style});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(backgroundColor:backgroundColor,),
      onPressed: onPressed,
      child: Text(text,style: style,),
    );
  }
}
