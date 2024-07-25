import 'package:flutter/material.dart';
import 'package:note_app/addnote/add_note_text_field.dart';

class AddNoteScreen extends StatelessWidget {
  const AddNoteScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Add task"),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              const TitleForm(
                fontSize: 23,
                hintText: "Title",
              ),
              Expanded(
                child: TitleForm(
                  maxLines: MediaQuery.of(context).size.height.toInt(),
                  hintText: "Note",
                ),
              ),
            ],
          ),
        ));
  }
}

