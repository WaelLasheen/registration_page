import 'package:flutter/material.dart';
import 'package:registration/components/button.dart';
import 'package:registration/components/field.dart';
import 'package:registration/components/otherOptions.dart';
import 'components/accountMessage.dart';

class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset:false,
        body: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.deepOrange,
                Colors.orange,
                Colors.orangeAccent,
                Colors.yellow,
                Colors.yellowAccent,
              ]
            )
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(25, 50, 0, 5),
                child: Text('Login',
                  style: TextStyle(fontSize: 50,color: Colors.white,fontWeight: FontWeight.bold),
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(25, 5, 0, 50),
                child: Text('Welcome back',
                  style: TextStyle(fontSize: 20,color: Colors.white),
                ),
              ),
              Expanded(
                child:Container(
                  padding: const EdgeInsets.fromLTRB(20, 60, 20, 0),
                  decoration: const BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(60),topRight: Radius.circular(60)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      feild(hint: 'Enter email', textVisibilty: false,),
                      feild(hint: 'Enter passward',textVisibilty: true),
                      Padding(
                        padding: EdgeInsets.only(top:10),
                        child: Text('Forgot Password ?'),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 50),
                        child: buttom(text: 'LOGIN'),
                      ),
                      Expanded(child: SizedBox()),
                      otherOption(),
                      Expanded(child: SizedBox()),
                      Padding(
                        padding: EdgeInsets.only(bottom: 20),
                        child: accountMessage(currentPage: "login"),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}