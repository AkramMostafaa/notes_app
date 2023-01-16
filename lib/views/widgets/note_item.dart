import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notess_app/views/edite_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return const EditNoteView();
        }));
      },
      child: Container(
        padding: EdgeInsets.only(top: 24,bottom: 24,left:16),
        decoration: BoxDecoration(
          color: const Color(0xffFFCC80),
          borderRadius: BorderRadius.circular(16),

        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: const Text(
                'Flutter Tips ',style: TextStyle(
                color:Colors.black,
                fontSize: 26,
              ),),
              subtitle:  Padding(
                padding: const EdgeInsets.only(top: 16.0,bottom: 16),
                child: Text(
                  'Build your career with flutter with akram Mostafa',style: TextStyle(
                  color:Colors.black.withOpacity(0.5),
                  fontSize: 18,
                ),),
              ),
              trailing: IconButton(
                onPressed: (){},
                icon:  Icon(
                  FontAwesomeIcons.trash,
                  color:Colors.black.withOpacity(0.4),
                  size: 24,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: Text('May 21,2023',style: TextStyle(
                color: Colors.black,
              ),),
            ),
          ],
        ),
      ),
    );

  }
}