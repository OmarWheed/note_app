
import 'package:flutter/material.dart';

class ListOfItemBody extends StatelessWidget {
  const ListOfItemBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 8,
        itemBuilder: (context, index) => const ItemBody(),
      ),
    );
  }
}

class ItemBody extends StatelessWidget {
  const ItemBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Container(
        width: double.infinity,
        height: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.black),
        ),
        child: const Text(
          "omar",
          style: TextStyle(overflow: TextOverflow.clip),
        ),
      ),
    );
  }
}
