
import 'package:flutter/material.dart';
import 'package:notess_app/views/widgets/custom_app_bar.dart';
import 'package:notess_app/views/widgets/custom_text_field.dart';

class EditViewBody extends StatelessWidget {
  const EditViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column (
        children:const  [
          SizedBox(
            height:50,
          ),
          CustomAppBar(
title: 'Edit Notes',
            icon: Icons.check,
          ),
          SizedBox(
            height:16,
          ),
          CustomTextField(hint: 'Title'),
 SizedBox(
  height:50,
),
          CustomTextField(hint: 'Content',
          maxLine: 5,),

        ],
      ),
    );
  }
}
