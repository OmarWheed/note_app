
import 'package:flutter/material.dart';

class SearchTitle extends StatelessWidget {
  const SearchTitle({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: TextFormField(
              onTapOutside: (event) =>
                  FocusManager.instance.primaryFocus?.unfocus(),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey.withOpacity(0.2),
                hintText: "Search",
                enabledBorder: borderStyle(),
                disabledBorder: borderStyle(),
                focusedBorder: borderStyle(),
                border: borderStyle(),
              )),
        ));
  }
}

borderStyle() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(5),
    borderSide: const BorderSide(color: Colors.grey),
  );
}
