import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(height: 50,),
       const Text('Notes',
    style: TextStyle(
      fontSize: 30,


    ),),
      ],
    );
  }
}


