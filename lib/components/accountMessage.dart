import 'package:flutter/material.dart';
import '../singUp.dart';

class accountMessage extends StatelessWidget {
  final String currentPage;
  const accountMessage({super.key, required this.currentPage});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(currentPage == 'login' ? "Don't have an account" : "Already have an account ?" ),
        TextButton(onPressed: (){
          if(currentPage == 'login'){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const signUp()),
            );
          }
          else{
            // Navigator.of(context).push(MaterialPageRoute(builder:(context)=>const login()));
            Navigator.pop(context);
          }
        }, 
          child: Text(currentPage == 'login' ? "sign up" : "sign in")
        )
      ],
    );
  }
}