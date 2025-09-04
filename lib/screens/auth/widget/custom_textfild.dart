import 'package:flutter/material.dart';

import '../../../constants/color.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hint;
  final bool isPassword;
  final String? Function(String?)? validator;

  const CustomTextField({required this.controller, required this.hint, this.isPassword=false, this.validator});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      controller: controller,
      obscureText: isPassword,
      decoration: InputDecoration(
          hintText: hint,
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: Colors.white70
          )
        ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                  color:primaryColor,
              )
          ),
          focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                  color: Colors.red
              )
          )
      ),
    );
  }
}
