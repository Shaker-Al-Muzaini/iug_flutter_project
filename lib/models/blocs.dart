// ignore_for_file: non_constant_identifier_names, camel_case_types, unnecessary_question_mark
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
}
