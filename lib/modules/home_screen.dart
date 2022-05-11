// ignore_for_file: camel_case_types, non_constant_identifier_names, must_be_immutable

import 'package:flutter/material.dart';
import 'package:iug_flutter_project/models/users.dart';
import 'package:iug_flutter_project/modules/accout_user.dart';
//import 'package:iug_flutter_project/models/users.dart';
import 'package:iug_flutter_project/modules/prodect_screen.dart';

import '../shared/componest/componest.dart';

class home_screen extends StatefulWidget {
  const home_screen({Key? key}) : super(key: key);
  @override
  State<home_screen> createState() => _home_screenState();
}
class _home_screenState extends State<home_screen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white,
      appBar:AppBar(
        elevation:0.0,
        backgroundColor:Colors.white,
        centerTitle:true,
        leading:IconButton(
          onPressed:(){
            Navigator.push(context,
                MaterialPageRoute(builder:(context)=> const accout_user()));
          },
          icon:const Icon(Icons.menu,color:Colors.black),
          ),
        title:const Text('Home',style:TextStyle(color:Colors.black)),
        actions: [
          IconButton(onPressed:(){},
              icon:const Icon(Icons.search,color:Colors.black,)
          )
        ],
      ),
       body:SingleChildScrollView(
         child: Padding(
           padding: const EdgeInsets.all(10.0),
           child: Row(
             children: [
               Expanded(
                 child: GridView.builder(
                   shrinkWrap:true,
                   physics:const NeverScrollableScrollPhysics(),
                   gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
                     crossAxisCount:2,
                     childAspectRatio:1,
                     mainAxisExtent:290,
                     mainAxisSpacing:10,
                   ),
                   itemBuilder:(context,index)=>prodect_list(prodects[index]),
                   itemCount:prodects.length,


                 ),
               )
             ],
           ),
         ),
       )
    );
  }
  bool isShop=true;
  bool isFavort=true;
  Widget prodect_list (prodect p)=>  Row(
    children: [
      Column(
        children: [
          Container(
            decoration: BoxDecoration(
              border:Border.all(width:1.5),
              color:Colors.white,
            ),
            child:GestureDetector(
              onTap:(){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=>const Prodect_secreen())
                );
              },
              child:  Image(
                image:AssetImage(p.img!),
                height:170,
                width:170,
              ),
            ),
          ),
          Row(
            children: [
               Padding(
                 padding: const EdgeInsets.only(right:45),
                 child: Text(p.name!),
               ),
              Padding(
                padding: const EdgeInsets.only(left:25),
                child: IconButton(
                  onPressed:(){
                    setState (() {
                      isShop=!isShop;
                    });
                  },
                  icon: Icon(Icons.business_center_rounded ,
                    color:isShop ? Colors.black :Colors.red,),
                ),
              ),
            ],
          ),
          Row(
            children:[
               Padding(
                 padding: const EdgeInsets.only(right:45),
                 child: Text(p.category!),
               ),
              Padding(
                padding: const EdgeInsets.only(left:25),
                child: IconButton(
                  onPressed:(){
                    setState(() {
                      isFavort=!isFavort;
                    });
                  },
                  icon:Icon(Icons.favorite ,
                      color:isFavort ?Colors.black : Colors.red),
                ),
              ),
            ],
          ),
          Padding(
            padding:  const EdgeInsets.only(right:125),
            child: Row(
              children:[
                Text('\$'+p.price!),
              ],
            ),
          ),
        ],
      ),
    ],
  );
}