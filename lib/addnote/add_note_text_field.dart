import 'package:flutter/material.dart';

class TitleForm extends StatelessWidget {
  const TitleForm({super.key, this.hintText, this.maxLines, this.fontSize});
  final String? hintText;
  final int? maxLines;
  final double? fontSize;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxLines,
      onTapOutside: (event) => FocusManager.instance.primaryFocus?.unfocus(),
      decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
            fontSize: fontSize ?? 18,
            fontWeight: FontWeight.bold,
          )),
    );
  }
}
