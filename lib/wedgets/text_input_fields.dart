import 'package:flutter/material.dart';
import 'package:tokme/constant/colors.dart';

class TextInputFields extends StatelessWidget {
  final TextEditingController controller;
  final String lableText;
  final bool isObscure;
  final IconData icon;

  const TextInputFields({
    Key? key,
    required this.controller,
    required this.lableText,
    this.isObscure = false,
    required this.icon
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: lableText,
        prefixIcon: Icon(icon),
        labelStyle: const TextStyle(fontSize: 20.0),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: const BorderSide(
            color: borderColor,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: const BorderSide(
            color: borderColor,
          ),
        ),
      ),
      obscureText: isObscure,
    );
  }
}
