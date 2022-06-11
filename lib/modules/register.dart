// ignore_for_file: camel_case_types, non_constant_identifier_names, must_be_immutable, avoid_print, sized_box_for_whitespace, empty_catches, use_build_context_synchronously
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iug_flutter_project/modules/login.dart';
import 'package:iug_flutter_project/shared/componest/componest.dart';
import '../models/blocs.dart';
import '../models/states.dart';
import 'bottum_na.dart';

class Register_Screen extends StatelessWidget {
 static var email_controller=TextEditingController();
 static var password_controller=TextEditingController();
 static var name_controller=TextEditingController();
 static var Form_Register =GlobalKey<FormState>();
  bool ispass=true;

  Register_Screen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context)=>All_bloc_cubic(),
      child: BlocConsumer<All_bloc_cubic ,All_Statels>(
        listener: (BuildContext context , state){},
        builder:(BuildContext context, state){
          return Scaffold(
            backgroundColor:Colors.white,
            appBar:AppBar(
              backgroundColor:Colors.white,
              elevation:0.0,
              leading:IconButton(
                  onPressed:(){
                    Navigator.pop(context);
                  },
                  icon:const Icon(Icons
                      .arrow_back_ios,color:Colors.black,)
              ),),
            body:(Center(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Form(
                      key:Form_Register,
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
                          TextFormField(
                            cursorColor: Colors.redAccent,
                            controller:name_controller,
                            onFieldSubmitted:(String value){
                              print(value);
                            },
                            validator:(value){
                              if(value!.isEmpty){
                                return'name is not be empty';
                              }
                              return null;
                            },
                            decoration: const InputDecoration(
                              labelText:'Name',
                            ),
                            style:const TextStyle(
                              color:Colors.black,
                              fontFamily:'cairo',
                              fontSize: 16,
                            ),
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
                              if(value!.isEmpty ){
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
                          //By_Reusable components
                          De_Button(
                            backgroundColor:Colors.redAccent,
                            function: () async{
                              All_bloc_cubic.get(context).saving=true;
                               if(Form_Register.currentState!.validate()){
                                 All_bloc_cubic.get(context).user_Regestar(
                                  name:name_controller.text,
                                  email:email_controller.text,
                                  password:password_controller.text,

                                );
                                    CollectionReference users =
                                    FirebaseFirestore.instance.collection
                                   ('user');
                                      await users.add({
                                      'username': name_controller.text,
                                      'email':email_controller.text,
                                      });
                                 Navigator.push(context,MaterialPageRoute
                                   (builder: (context)=>const bottom_na()));
                                 All_bloc_cubic.get(context).saving=false;
                                      users.doc();

                             }
                            },
                            text:'Register',
                            BorderRadiuss:1,
                          ),
                          const SizedBox(
                            height:20,
                          ),
                          Row(
                            mainAxisAlignment:MainAxisAlignment.center,
                            children:  [
                              const Text('an account?'),
                              TextButton(onPressed:(){
                                Navigator.push(context,
                                    MaterialPageRoute(builder:(context)=> login_secrrn())
                                );
                              },child: const Text('login')),
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
