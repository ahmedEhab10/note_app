import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:note_app/const.dart';
import 'package:note_app/models/NoteModel.dart';

part 'add_note_cubit_state.dart';

class AddNoteCubitCubit extends Cubit<AddNoteCubitState> {
  AddNoteCubitCubit() : super(AddNoteCubitInitial());
  addnote(Notemodel note) async {
    emit(AddNoteLoading());
    try {
      var NoteBox = Hive.box<Notemodel>(kNoteBox);
      await NoteBox.add(note);
      emit(AddNoteCubitSccusses());
    } catch (e) {
      emit(
        AddNoteCubitFulier(ErrorMassage: e.toString()),
      );
    }
  }
}
