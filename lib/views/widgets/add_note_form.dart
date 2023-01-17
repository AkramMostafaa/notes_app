import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notess_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notess_app/models/note_model.dart';
import 'package:notess_app/views/widgets/custom_button.dart';
import 'package:notess_app/views/widgets/custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({Key? key}) : super(key: key);


  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey=GlobalKey();
  AutovalidateMode autovalidateMode =AutovalidateMode.disabled;
  String? title,subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children:  [
          const SizedBox(
            height: 32,
          ),
          CustomTextField(
            hint: 'Title',
            onSaved: (value){
              title=value;
            },
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextField(
            hint: 'Content',
            maxLine: 5,
            onSaved: (value){
              subTitle=value;
            },
          ),
          const SizedBox(height: 32,),

          CustomButton(
            text: 'Add',
            onTap: (){
              if(formKey.currentState!.validate()){
                formKey.currentState!.save();
                 var noteModel = NoteModel(title: title!, subTitle: subTitle!, date: DateTime.now().toString(), color: Colors.blue.value);
                BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
              }else
              {
                autovalidateMode=AutovalidateMode.always;
                setState((){});
              }

            },
          ),
          const SizedBox(height: 20,),
        ],
      ),
    );
  }
}
