import 'package:flutter/material.dart';
import 'package:registration/components/button.dart';

class otherOption extends StatelessWidget {
  const otherOption({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
          height: 60,
          width: 60,
          child: Image.asset('icon/facebook.png'),
        ),
        SizedBox(
          height: 60,
          width: 60,
          child: Image.asset('icon/google.png'),
        ),
        SizedBox(
          height: 60,
          width: 60,
          child: Image.asset('icon/github.png'),
        ),
        
      ],
    );
  }
}