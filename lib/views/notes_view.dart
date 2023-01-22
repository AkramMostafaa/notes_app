import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notess_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notess_app/models/note_model.dart';
import 'package:notess_app/views/widgets/add_note_bottom_sheet.dart';
import 'package:notess_app/views/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showModalBottomSheet(
            isScrollControlled: true,
              context: context,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              builder: (context){
            return const AddNoteBottomSheet();
          });

        },
        child:const Icon(Icons.add),
      ),
      body:  NotesViewBody(
      ) ,
    );
  }
}


