import 'package:flutter/material.dart';
import 'package:note_app/widgets/Cstom_TextFaild.dart';
import 'package:note_app/widgets/Custom_botton.dart';

class AddNoteButtomSheet extends StatefulWidget {
  const AddNoteButtomSheet({super.key});

  @override
  State<AddNoteButtomSheet> createState() => _AddNoteButtomSheetState();
}

class _AddNoteButtomSheetState extends State<AddNoteButtomSheet> {
  String? Title, subTitle;
  GlobalKey<FormState> FormKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: SingleChildScrollView(
        child: Form(
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
        ),
      ),
    );
  }
}
