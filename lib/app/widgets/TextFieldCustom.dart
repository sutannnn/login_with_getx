// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class TextFieldCustom extends StatelessWidget {
  const TextFieldCustom({
    Key? key,
    required this.controller,
    required this.title,
    required this.icon,
    this.sufix,
    required this.isObsc,
  }) : super(key: key);
  final TextEditingController controller;
  final String title;
  final Icon icon;
  final Widget? sufix;
  final bool isObsc;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: isObsc,
      decoration: InputDecoration(
        border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(5))),
        hintText: title,
        prefixIcon: icon,
        suffixIcon: sufix
      ),
    );
  }
}
