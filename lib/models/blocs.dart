// ignore_for_file: non_constant_identifier_names, camel_case_types, unnecessary_question_mark, avoid_print, unused_local_variable, unnecessary_null_comparison
import 'dart:math';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iug_flutter_project/models/states.dart';
class All_bloc_cubic extends Cubit<All_Statels>{
  All_bloc_cubic() :super(initialStates());
  static All_bloc_cubic get(context)=>BlocProvider.of(context);
  bool isShop =true;
  void isShos(){
    isShop= !isShop;
    emit(isShoping());
  }

  bool isFavort =true;
  void isFavorts(){
    isFavort =!isFavort;
    emit(isFavorting());
  }

  var cont=0;
  void cont_plus(){
     cont++;
     emit(is_cout_plus());
  }
  void cout_minus(){
    cont--;
    emit(is_cout_minus());
  }


  bool isFavort_prdect =true;
  void Favort_prdect(){
    isFavort_prdect=!isFavort_prdect;
    emit(isFavort_prdects());
  }


  bool isshopp_prdect  =true ;
   void isshopp_prdects(){
     isshopp_prdect=!isshopp_prdect;
    emit(isshopp_prdecting());
  }


  int cont_order=0;
   void cont_order_plus(){
     cont_order++;
     emit(cont_ordering_plus());
   }
  void cont_order_minus(){
    cont_order--;
    emit(cont_ordering_minus());
  }


  bool ispass  =true;
  void ispasswored(){
    ispass=!ispass;
    emit(ispasswored_stet());
  }

  String password='';
  String email='';
  String name='';
  Future<void>user_Login({email,password ,context}) async {
    emit(user_loding());
  }
   Future <void> user_Regestar ({name,password,email}) async {
      emit(user_R());
      try {
        await FirebaseAuth.instance
           .createUserWithEmailAndPassword(
          email:email,
          password:password,
        ).then((value){
          print('a');
          print (value.user!.email);
          print (value.user!.uid);
          emit(user_successful());
        }).catchError((error){e;});
      } on FirebaseAuthException catch (e) {
        if (e.code == 'weak-password') {
          print('The password provided is too weak.');
        } else if (e.code == 'email-already-in-use') {
          print('The account already exists for that email.');
        }
      }

  }

}


