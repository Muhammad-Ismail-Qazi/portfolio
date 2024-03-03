import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final textFieldController;
  final hint;
  final maxLine;

  const CustomTextField(
      {super.key,
      required this.textFieldController,
      required this.hint,
      this.maxLine});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textFieldController,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        hintText: hint,
      ),
      maxLines: maxLine,
    );
  }
}