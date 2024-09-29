part of 'add_note_cubit_cubit.dart';

@immutable
sealed class AddNoteCubitState {}

final class AddNoteCubitInitial extends AddNoteCubitState {}

final class AddNoteLoading extends AddNoteCubitState {}

final class AddNoteCubitSccusses extends AddNoteCubitState {}

final class AddNoteCubitFulier extends AddNoteCubitState {
  final String ErrorMassage;

  AddNoteCubitFulier({required this.ErrorMassage});
}
