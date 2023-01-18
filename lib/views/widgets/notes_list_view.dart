import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notess_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notess_app/cubits/notes_cubit/notes_state.dart';
import 'package:notess_app/views/widgets/note_item.dart';

import '../../models/note_model.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit,NotesState>(

      builder:(context,state) {
        List<NoteModel> notes=BlocProvider.of<NotesCubit>(context).notes??[];
        return Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: ListView.builder(
          itemCount:notes.length,
            padding:EdgeInsets.zero,
            itemBuilder: (context,index){

          return Padding(
            padding: const EdgeInsets.symmetric(vertical:  4.0),
            child:   NoteItem(
              note: notes[index],

            ),
          );
        }),
      );}
    );
  }
}
