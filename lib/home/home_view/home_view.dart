import 'package:flutter/material.dart';
import 'package:note_app/addnote/add_note_screen.dart';
import 'package:note_app/home/home_widget/list_view_item.dart';
import 'package:note_app/home/home_widget/search_title.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.grey.shade200,
        onPressed: () {
          //go to add note screen
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const AddNoteScreen()));
        },
        child: const Icon(Icons.add),
      ),
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text('Tasks'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          const SearchTitle(),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          const ListOfItemBody()
        ],
      ),
    );
  }
}
