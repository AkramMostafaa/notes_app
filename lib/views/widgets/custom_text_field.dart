
import 'package:flutter/material.dart';
import 'package:notess_app/constant/constant.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({ required this.hint,  this.maxLine=1, this.onSaved }) ;
final String hint;
final int maxLine;
final void Function(String?)?onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      maxLines: maxLine,
      validator: (value){
        if(value?.isEmpty?? true)
          {
            return 'Field is required';
          }else{
          return null;

        }

      },

      cursorColor:KPrimaryColor,
      decoration: InputDecoration(
        hintText: hint,


        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(KPrimaryColor),
      ),
    );
  }
}

OutlineInputBorder buildBorder([color]){
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
    borderSide: BorderSide(
      color: color ?? Colors.white,
    ),


  );
}