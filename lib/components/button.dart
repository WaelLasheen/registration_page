import 'package:flutter/material.dart';
import 'package:registration/welcome.dart';

class buttom extends StatelessWidget {
  final String text;
  const buttom({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      icon:const Icon(Icons.arrow_forward),
      onPressed:(){
        Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const welcome()),
            );
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.red,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18),),
        padding: const EdgeInsets.fromLTRB(50, 8, 50, 8),
      ), 
      label: Text(text,
      style: const TextStyle(fontSize: 20),
      )
    );
  }
}