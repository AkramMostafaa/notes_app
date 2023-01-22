import 'package:flutter/material.dart';
import 'package:notess_app/views/widgets/custom_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key, required this.title, required this.icon, this.onPressed}) : super(key: key);
  final String title;
  final IconData icon;
  final void Function()? onPressed;


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SizedBox(height: 50,),
        Text(
         title,
    style: const TextStyle(
      fontSize: 30,


    ),),
        // SizedBox(width: 160,),
        Spacer(),
        CustomIcon(
          onPressed: onPressed,

          icon:icon ,
        ),
      ],
    );
  }
}



