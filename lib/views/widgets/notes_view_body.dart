import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notess_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notess_app/views/widgets/custom_app_bar.dart';
import 'package:notess_app/views/widgets/note_item.dart';
import 'package:notess_app/views/widgets/notes_list_view.dart';

class NotesViewBody extends StatefulWidget {
  const NotesViewBody({Key? key}) : super(key: key);

  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody> {
  void initState(){
    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
    super.initState();
  }
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


