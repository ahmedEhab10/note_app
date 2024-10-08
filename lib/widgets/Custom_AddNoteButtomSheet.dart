import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:note_app/cubits/Add_Note_Cubit/add_note_cubit_cubit.dart';
import 'package:note_app/cubits/Notes_cubit/notes_cubit.dart';
import 'package:note_app/widgets/Add_Note_form.dart';

class Addnotebuttomsheet extends StatelessWidget {
  const Addnotebuttomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubitCubit(),
      child: Padding(
        padding: EdgeInsets.only(
            left: 20.0,
            right: 20,
            bottom: MediaQuery.of(context).viewInsets.bottom),
        child: BlocConsumer<AddNoteCubitCubit, AddNoteCubitState>(
          listener: (context, state) {
            if (state is AddNoteCubitSccusses) {
              BlocProvider.of<NotesCubit>(context).GetAllNotes();
              Navigator.pop(context);
            }
            if (state is AddNoteCubitFulier) {
              print('fail ${state.ErrorMassage}');
            }
          },
          builder: (context, state) {
            return AbsorbPointer(
              absorbing: state is AddNoteLoading ? true : false,
              child: SingleChildScrollView(
                child: const AddNoteForm(),
              ),
            );
          },
        ),
      ),
    );
  }
}
