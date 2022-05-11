// ignore_for_file: camel_case_types, non_constant_identifier_names, must_be_immutable
import 'package:flutter/material.dart';
import 'package:iug_flutter_project/models/users.dart';
import 'package:iug_flutter_project/shared/componest/componest.dart';

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
          onPressed:(){},
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
       // scrollDirection:Axis.vertical,
        scrollDirection:Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              SizedBox(
                height :double.infinity,
                width :200,
                child: ListView.separated(
                    shrinkWrap:true,
                    //physics:const NeverScrollableScrollPhysics(),
                    itemBuilder:(context,index)=>prodect_list_l(prodects[index],),
                    separatorBuilder:(context,index)
                    =>const SizedBox (height:0),
                    itemCount:prodects.length),
              ),
              SizedBox(
                height :double.infinity,
                width :200,
                child: ListView.separated(
                    shrinkWrap:true,
                    //physics:const NeverScrollableScrollPhysics(),
                    itemBuilder:(context,index)=>prodect_list_R(prodects2[index]),
                    separatorBuilder:(context,index)
                    =>const SizedBox (height:0),
                    itemCount:prodects2.length),
              ),
            ],
          ),
        ),
      )
    );
  }
  bool isShop_r=true;
  bool isShop_l=true;
  bool isFavort_r=true;
  bool isFavort_l=true;
  Widget prodect_list_l (prodect p)=>  Expanded(

    child: Column(
      children: [
        Container(
          decoration: BoxDecoration(
            border:Border.all(width:1.5),

            color:Colors.black,
          ),
          child:   Image(
            image:AssetImage(p.img!),
            height:170,
            width:170,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left:15),
          child: Row(

            children: [
               Expanded(child:Text(p.name!)),
              Expanded(
                child: IconButton(
                  onPressed:(){
                   setState (() {
                     isShop_r=!isShop_r;
                    });
                  },
                  icon: Icon(Icons.business_center_rounded ,
                    color:isShop_r ? Colors.black :Colors.red,),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left:15),
          child: Row(
            children:[
               Expanded(child:Text(p.category!)),
              Expanded(
                child: IconButton(
                  onPressed:(){
                    setState(() {
                      isFavort_r=!isFavort_r;
                    });
                  },
                  icon:Icon(Icons.favorite ,
                      color:isFavort_r ?Colors.black : Colors.red),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left:15),
          child: Row(
            children:   [
              Text('\$'+p.price!),
            ],
          ),
        ),
      ],
    ),

  );
  Widget prodect_list_R (prodect2 p2)=>  Expanded(

    child: Column(
      children: [
        Container(
          decoration: BoxDecoration(
            border:Border.all(width:1.5),

            color:Colors.black,
          ),
          child:   Image(
            image:AssetImage(p2.img!),
            height:170,
            width:170,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left:15),
          child: Row(

            children: [
              Expanded(child:Text(p2.name!)),
              Expanded(
                child: IconButton(
                  onPressed:(){
                    setState (() {
                      isShop_r=!isShop_r;
                    });
                  },
                  icon: Icon(Icons.business_center_rounded ,
                    color:isShop_r ? Colors.black :Colors.red,),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left:15),
          child: Row(
            children:[
              Expanded(child:Text(p2.category!)),
              Expanded(
                child: IconButton(
                  onPressed:(){
                    setState(() {
                      isFavort_r=!isFavort_r;
                    });
                  },
                  icon:Icon(Icons.favorite ,
                      color:isFavort_r ?Colors.black : Colors.red),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left:15),
          child: Row(
            children:   [
              Text('\$'+p2.price!),
            ],
          ),
        ),
      ],
    ),

  );
}

