part of 'notes_cubit.dart';

@immutable
sealed class NotesState {}

final class NotesInitial extends NotesState {}

final class NotesLoading extends NotesState {}

final class NotesSccusses extends NotesState {}

final class NotesFulier extends NotesState {
  final String ErrorMassage;

  NotesFulier({required this.ErrorMassage});
}
