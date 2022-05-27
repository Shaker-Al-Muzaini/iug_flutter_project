// ignore_for_file: camel_case_types, must_be_immutable, non_constant_identifier_names, avoid_print, unused_local_variable


import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iug_flutter_project/modules/register.dart';
import 'package:iug_flutter_project/shared/componest/componest.dart';
import '../models/blocs.dart';
import '../models/states.dart';
import 'add_prodect.dart';
import 'bottum_na.dart';
class l_admin extends StatelessWidget {
  var email_controller=TextEditingController();
  var password_controller=TextEditingController();
  var Form_Login =GlobalKey<FormState>();

  l_admin({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context)=>All_bloc_cubic(),
      child: BlocConsumer<All_bloc_cubic ,All_Statels>(
        listener:(BuildContext context,state){},
        builder: (BuildContext context,state){
          return
            Scaffold(
              body:(
                  Center(
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Form(
                          key:Form_Login,
                          child: Column(
                            children:[
                              const Text('Welcome',
                                  style:TextStyle(
                                    color:Colors.black,
                                    fontSize:25,
                                    fontFamily:'cairo',
                                    fontWeight:FontWeight.w700,
                                  )
                              ),
                              const SizedBox(
                                  width:double.infinity,
                                  height:70,
                                  child:Text(
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
                                  keyboardType:TextInputType.emailAddress,
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

                                  suffixIcon:IconButton(color:Colors.black,
                                      icon:All_bloc_cubic.get(context).ispass?
                                      const Icon
                                        (Icons
                                          .visibility) :const Icon
                                        (Icons.visibility_off,color:Colors.black,),
                                      onPressed:()
                                      {
                                        All_bloc_cubic.get(context).ispasswored();
                                      }
                                  ),

                                ),


                                style:const TextStyle(
                                  color:Colors.black,
                                  fontFamily:'cairo',
                                  fontSize: 16,
                                ),
                                keyboardType:TextInputType.visiblePassword,
                                obscureText:All_bloc_cubic.get(context).ispass,
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
                                function: ()async{
                                  if(Form_Login.currentState!.validate()){
                                    All_bloc_cubic.get(context).lodig_bot();
                                    try{
                                      final user = await FirebaseAuth.instance
                                          .signInWithEmailAndPassword(
                                        email:email_controller.text,
                                        password:password_controller.text,
                                      );
                                      Navigator.push(context,MaterialPageRoute
                                        (builder: (context)=> add_prodects()));
                                    }catch(e){
                                      print(e);
                                    }
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
                  )
              ),


            );
        },
      ),
    );
  }
}
