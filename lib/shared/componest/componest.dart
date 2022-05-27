// ignore_for_file: non_constant_identifier_names, avoid_types_as_parameter_names, camel_case_types


// import 'dart:io';

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
    labelText:'Email Name',
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
  late  final String? id;

  prodect({
    required this.img,
    required this.name,
    required this.category,
    required this.price,
        this.id,
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


//Info_accout_user_date
class accout_date{
  late final String? name;
  late final Icon? icon1;
   Icon? icon2;
   Function? on_tap;
  accout_date({
  required this.name,
  required this.icon1,
   this.icon2,
    this.on_tap,

});
}






//create_user_Store
class create_user{
  late final String? email;
  late final String? name;
  late final String? password;
  late final String? uId;

  create_user({
    required this.name,
    required this.password,
    required this.email,
   required this.uId,
  });
  create_user.formjson(Map<String,dynamic>json){
    password=json['password'];
    name=json['name'];
    email=json['email'];
    uId=json['uId'];
  }
  Map<String,dynamic>toMap(){
    return{
      'email':email,
      'name':name,
      'password':password,
      'uId':uId,
    };
  }
}


class add_prodect{
  late final String img;
  late final String? name;
  late final String? category;
  late final String? price;
  late  final String? id_prdect;
  add_prodect({
    required this.img,
    required this.name,
    required this.category,
    required this.price,
    this.id_prdect,
  });
  add_prodect.formjson(Map<String,dynamic>json){
    img=json['img'];
    name=json['name'];
    category=json['category'];
    price=json['price'];
    id_prdect=json['id_prdect'];
  }
  Map<String,dynamic>toMap(){
    // String  url_image=All_bloc_cubic.get(context).url_image;
    return{
      'category':category,
      'img':img,
      'name':name,
      'price':price,
      'uId':id_prdect,
    };
  }

}

