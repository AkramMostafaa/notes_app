import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notess_app/constant.dart';
import 'package:notess_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notess_app/models/note_model.dart';
import 'package:notess_app/simple_bloc_observer.dart';
import 'package:notess_app/views/notes_view.dart';

import 'cubits/notes_cubit/notes_cubit.dart';

void main() async{
  Bloc.observer=SimpleBlocObserver();
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(KNotesBox);

  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   BlocProvider(
      create: (context)=>NotesCubit(),
      child: MaterialApp(

          debugShowCheckedModeBanner: false,
          theme:  ThemeData(
            brightness: Brightness.dark,
            fontFamily: 'Poppins'
          ),
          home: const NotesView() ,
        ),
    );

  }
}



