import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:note_app/const.dart';
import 'package:note_app/models/NoteModel.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
  List<Notemodel>? Notes;
  GetAllNotes() {
    var NoteBox = Hive.box<Notemodel>(kNoteBox);
    Notes = NoteBox.values.toList();
    emit(NoteSccusses());
  }
}
