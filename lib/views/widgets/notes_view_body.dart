import 'package:flutter/material.dart';
import 'package:notess_app/views/widgets/custom_app_bar.dart';
import 'package:notess_app/views/widgets/note_item.dart';
import 'package:notess_app/views/widgets/notes_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        children: const [
          SizedBox(height: 50,),
          CustomAppBar(
            title: 'Notes',
            icon: Icons.search,
          ),
          SizedBox(height: 10,),
          Expanded(child: NotesListView()),
        ],
      ),
    );
  }
}


