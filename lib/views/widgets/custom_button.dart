import 'package:flutter/material.dart';
import 'package:notess_app/constant.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key, required this.text,  this.onTap,
  }) : super(key: key);
  final String text;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        width: MediaQuery.of(context).size.width,
        child: Center(child: Text(text,style: TextStyle(
          fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black
        ),)),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: KPrimaryColor,

        ),
      ),
    );
  }
}