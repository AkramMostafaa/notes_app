import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notess_app/constant.dart';
import 'package:notess_app/models/note_model.dart';
import 'package:notess_app/views/notes_view.dart';

void main() async{
  await Hive.initFlutter();
  await Hive.openBox(KNotesBox);
  Hive.registerAdapter(NoteModelAdapter());
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(

      debugShowCheckedModeBanner: false,
      theme:  ThemeData(
        brightness: Brightness.dark,
        fontFamily: 'Poppins'
      ),
      home: const NotesView() ,
    );
  }
}



