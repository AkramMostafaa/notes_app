import 'package:bloc/bloc.dart';
import 'package:notess_app/cubits/notes_cubit/notes_state.dart';


class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
}
