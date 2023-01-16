import 'package:flutter/material.dart';
import 'package:notess_app/views/widgets/add_note_bottom_sheet.dart';
import 'package:notess_app/views/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showModalBottomSheet(context: context,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              builder: (context){
            return const AddNoteBottomSheet();
          });
        },
        child: Icon(Icons.add),
      ),
      body: const NotesViewBody() ,
    );
  }
}

