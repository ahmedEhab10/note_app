import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:note_app/const.dart';
import 'package:note_app/models/NoteModel.dart';

part 'add_note_cubit_state.dart';

class AddNoteCubitCubit extends Cubit<AddNoteCubitState> {
  AddNoteCubitCubit() : super(AddNoteCubitInitial());
  addnote(Notemodel note) async {
    try {
      emit(AddNoteLoading());
      var NoteBox = Hive.box(kNoteBox);
      await NoteBox.add(note);
      AddNoteCubitSccusses();
    } catch (e) {
      AddNoteCubitFulier(ErrorMassage: e.toString());
    }
  }
}
