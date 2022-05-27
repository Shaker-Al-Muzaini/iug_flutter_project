// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:iug_flutter_project/modules/login.dart';
import 'package:iug_flutter_project/modules/register.dart';
import 'package:iug_flutter_project/shared/componest/componest.dart';
class screen4 extends StatelessWidget{
  const screen4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment:MainAxisAlignment.center,
            children:[
               const Image(
                image:AssetImage('images/logo.jpeg'),
              ),
              const SizedBox(height:270),
              De_Button(
                backgroundColor:Colors.redAccent,
                function:(){
                  Navigator.push(context,
                    MaterialPageRoute(builder:(context)=>login_secrrn())
                  );
                },
                text:'SIGN IN',
                BorderRadiuss:0,
              ),
             const SizedBox(height:10),
              De_Button(
                backgroundColor:Colors.redAccent,
                function:(){
                  Navigator.push(context,
                      MaterialPageRoute(builder:(context)=> Register_Screen())
                  );
                },
                text:'SIGN UP',
                BorderRadiuss:0,
              ),
            ],
          ),
        ),
      )
    );
  }
}
