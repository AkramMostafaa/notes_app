import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notess_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notess_app/models/note_model.dart';
import 'package:notess_app/views/widgets/custom_app_bar.dart';
import 'package:notess_app/views/widgets/custom_text_field.dart';

class EditViewBody extends StatefulWidget {
  const EditViewBody({Key? key, required this.note}) : super(key: key);
  final NoteModel note;

  @override
  State<EditViewBody> createState() => _EditViewBodyState();
}

class _EditViewBodyState extends State<EditViewBody> {
   String? title,subTitle;



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          CustomAppBar(
            onPressed: () {

              widget.note.title=title?? widget.note.title;
              widget.note.subTitle=subTitle?? widget.note.subTitle;
              widget.note.save();
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              Navigator.pop(context);

            },
            title: 'Edit Notes',
            icon: Icons.check,
          ),
          const SizedBox(
            height: 16,
          ),
           CustomTextField(
               onChanged: (value){
                 title = value;
               },

              hint: widget.note.title,
           ),
          const SizedBox(
            height: 50,
          ),
           CustomTextField(
             onChanged: (value){
               subTitle = value;
             },

            hint: widget.note.subTitle,
            maxLine: 5,
          ),
        ],
      ),
    );
  }
}
