import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:note_app/models/NoteModel.dart';

part 'add_note_cubit_state.dart';

class AddNoteCubitCubit extends Cubit<AddNoteCubitState> {
  AddNoteCubitCubit() : super(AddNoteCubitInitial());
  addnote(Notemodel note) {}
}
