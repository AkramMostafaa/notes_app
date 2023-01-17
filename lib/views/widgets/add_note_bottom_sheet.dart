import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notess_app/constant.dart';
import 'package:notess_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notess_app/views/widgets/add_note_form.dart';
import 'package:notess_app/views/widgets/custom_button.dart';
import 'package:notess_app/views/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(
        child: BlocConsumer<AddNoteCubit, AddNoteState>(
            listener: (context, state) {
              if(state is AddNoteFailure){
print('faild${state.errorMessage}');
              }
              if(state is AddNoteSuccess){
                Navigator.pop(context);
              }
            },
            builder: (context, state) {
              return ModalProgressHUD(
                  inAsyncCall: state is AddNoteLoading ? true : false,
                  child: AddNoteForm());
            }),
      ),
    );
  }
}
