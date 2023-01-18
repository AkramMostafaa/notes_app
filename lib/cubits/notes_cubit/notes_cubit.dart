import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:notess_app/constant.dart';
import 'package:notess_app/cubits/notes_cubit/notes_state.dart';
import 'package:notess_app/models/note_model.dart';


class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
  List<NoteModel>? notes;
  fetchAllNotes(){

      var notesBox=Hive.box<NoteModel>(KNotesBox);
notes  =notesBox.values.toList();
// emit(NotesSuccess(notes!));




  }
}
