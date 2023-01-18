import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:notess_app/constant.dart';
import 'package:notess_app/cubits/notes_cubit/notes_state.dart';
import 'package:notess_app/models/note_model.dart';


class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
  fetchAllNotes()async{
    try {
      var notesBox=Hive.box<NoteModel>(KNotesBox);

emit(NotesSuccess(notesBox.values.toList()));

    } catch (e) {
      emit(NotesFailure(e.toString()));
    }

  }
}
