// ignore_for_file: camel_case_types, non_constant_identifier_names, avoid_print, avoid_unnecessary_containers, sized_box_for_whitespace, unused_label

import 'package:flutter/material.dart';
import 'package:iug_flutter_project/modules/home_screen.dart';
import 'package:iug_flutter_project/modules/register.dart';
import 'package:iug_flutter_project/shared/componest/componest.dart';

class login_secrrn extends StatefulWidget {
  const login_secrrn({Key? key}) : super(key: key);

  @override
  State<login_secrrn> createState() => _login_secrrnState();
}

class _login_secrrnState extends State<login_secrrn> {
  var email_controller=TextEditingController();
  var password_controller=TextEditingController();
  var Form_Login =GlobalKey<FormState>();
  bool ispass=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Form(
              key:Form_Login,
              child: Column(
                children:  [
                  const Text('Welcome',
                      style:TextStyle(
                        color:Colors.black,
                        fontSize:25,
                        fontFamily:'cairo',
                        fontWeight:FontWeight.w700,
                      )
                  ),
                  Container(
                      width:double.infinity,
                   height:70,
                   child:const Text(
                      'Sign up to get started and experience great shopping deals' ,
                       textAlign:TextAlign.center,
                      style:TextStyle(
                        color:Colors.black,
                        fontSize:15,
                        fontFamily:'cairo',


                      )
                  )),
                  const SizedBox(
                    height: 40,
                  ),
                  Text_Form_Field(
                    controll:email_controller,
                    keyboardType:TextInputType.text,
                    cursor:Colors.pink
                  ),
                  const SizedBox(height:20),

                  TextFormField(
                    cursorColor: Colors.redAccent,
                    showCursor: true,
                    controller:password_controller,
                    onFieldSubmitted:(String value){
                      print(value);
                    },
                    validator:(value){
                      if(value!.isEmpty){
                        return'password is not be empty';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      labelText:'Password',
                     // prefixIcon:const Icon(Icons.lock),

                      suffixIcon:IconButton(color:Colors.black,icon:ispass ?
                      const Icon
                        (Icons
                          .visibility) :const Icon
                        (Icons.visibility_off,color:Colors.black,),
                          onPressed:()
                          {
                            setState(() {
                              ispass=!ispass;

                            });
                          }
                      ),

                    ),


                    style:const TextStyle(
                      color:Colors.black,
                      fontFamily:'cairo',
                      fontSize: 16,
                    ),
                    keyboardType:TextInputType.visiblePassword,
                    obscureText:ispass,
                  ),

                  const SizedBox(height:29),

                  Row(
                    mainAxisAlignment:MainAxisAlignment.end,
                    children:[
                      TextButton(
                          child:const Text('Forgot Password?',
                      style: TextStyle(
                        color:Colors.black,
                        fontSize:14,
                        fontFamily:'cairo',
                      ),
                          ),
                        onPressed:(){},
                     )
                    ],
                  ),
                  //By_Reusable components

                  De_Button(
                    backgroundColor:Colors.redAccent,
                    function: (){
                      if(Form_Login.currentState!.validate()){
                        print(email_controller.text);
                        print(password_controller.text);
                        Navigator.push(context,
                            MaterialPageRoute(builder:(context)=>const home_screen())
                        );
                      }
                    },
                    text:'LOGIN',
                    BorderRadiuss:1,
                  ),
                  const SizedBox(
                    height:20,
                  ),
                  Row(
                    mainAxisAlignment:MainAxisAlignment.center,
                    children:  [
                      const Text('Don\'t have an account?'),
                      TextButton(onPressed:(){
                       Navigator.push(context,
                         MaterialPageRoute(builder:(context)=>Register_Screen())
                           );
                      },child: const Text('Register Now')),
                    ],
                  )
                ],

              ),
            ),
          ),

        ),
      ),


    );
  }
}
