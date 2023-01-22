
import 'package:flutter/material.dart';
import 'package:notess_app/constant.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({ required this.hint,  this.maxLine=1, this.onSaved ,this.onChanged}) ;
final String hint;
final int maxLine;
 final Function(String)? onChanged;
final void Function(String?)?onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
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