import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/Add_Note_Cubit/add_note_cubit_cubit.dart';
import 'package:note_app/models/NoteModel.dart';
import 'package:note_app/widgets/Cstom_TextFaild.dart';
import 'package:note_app/widgets/Custom_botton.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  String? Title, subTitle;
  GlobalKey<FormState> FormKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: FormKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: 24,
          ),
          CstomTextfaild(
            onsave: (value) {
              Title = value;
            },
            hint: 'Ttle',
          ),
          const SizedBox(
            height: 24,
          ),
          CstomTextfaild(
            onsave: (value) {
              subTitle = value;
            },
            hint: 'Contet',
            maxline: 5,
          ),
          const SizedBox(
            height: 30,
          ),
          Custombotton(
            onTap: () {
              if (FormKey.currentState!.validate()) {
                FormKey.currentState!.save();
                var note = Notemodel(
                    title: Title!,
                    suptitle: subTitle!,
                    date: DateTime.now().toString(),
                    color: Colors.blueGrey.value);
                BlocProvider.of<AddNoteCubitCubit>(context).addnote(note);
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
