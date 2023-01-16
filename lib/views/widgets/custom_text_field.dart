
import 'package:flutter/material.dart';
import 'package:notess_app/constant/constant.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({Key, required this.hint,  this.maxLine=1 }) ;
final String hint;
final int maxLine;
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLine,

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