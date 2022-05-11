// ignore_for_file: non_constant_identifier_names, avoid_types_as_parameter_names, camel_case_types
import 'package:flutter/material.dart';

//By_Reusable components info Button
Widget De_Button ({
  double? width=double.infinity,
  Color? backgroundColor =Colors.blue,
  required final Function()?  function,
  required String? text,
  double? BorderRadiuss =0,
})=>Container(
    width:width!,
    child: MaterialButton(
        onPressed:function!,
        child: Text(text!,
            style:const TextStyle(color:Colors.white))
    ),
    decoration:BoxDecoration(
        color:backgroundColor!,
        borderRadius:BorderRadius.circular(BorderRadiuss!)
    )
);



//info Text_Form_Field

Widget Text_Form_Field({
  required TextEditingController controll,
  required TextInputType keyboardType,
  required final Color cursor ,
})=>TextFormField(
  controller:controll,
  onFieldSubmitted:(String value){
    // ignore: avoid_print
    print(value);
  },
  validator:( value){
    if (value!.isEmpty){
      return"email not br Empty";
    }
    return null;
  },
  decoration:const InputDecoration(
    labelText:'User Name',
  ),
  style:const TextStyle(
    color:Colors.black,
    fontFamily:'cairo',
    fontSize: 16,
  ),
  cursorColor:cursor,
  keyboardType:keyboardType,
);

///

////info_prodect_claes_mode
//info_prodect_Dete
class prodect{
  late final String? img;
  late final String? name;
  late final String? category;
  late final String? price;

  prodect({
    required this.img,
    required this.name,
    required this.category,
    required this.price,
  });
}

//info_prodect_Dete2
class prodect2{
  late final String? img;
  late final String? name;
  late final String? category;
  late final String? price;

  prodect2({
    required this.img,
    required this.name,
    required this.category,
    required this.price,
  });
}

//end


//info_prodect_Types


class teype_product{
  late final String? img;
  late final String? name;
  late final String? category;
  late final String? price;

  teype_product({
    required this.img,
    required this.name,
    required this.category,
    required this.price,
  });
}

//info_oreder_prodect

class ordering {
  late final String? img;
  late final String? name;
  late final String? category;
  late final String? price;

  ordering({
    required this.img,
    required this.name,
    required this.category,
    required this.price,
  });
}

///end
