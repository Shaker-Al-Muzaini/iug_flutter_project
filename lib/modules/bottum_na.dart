// ignore_for_file: camel_case_types
import 'package:flutter/material.dart';
import 'package:iug_flutter_project/modules/accout_user.dart';
import 'package:iug_flutter_project/modules/home_screen.dart';
import 'package:iug_flutter_project/modules/order_screen.dart';
import 'package:iug_flutter_project/modules/seeting_scrren.dart';
class bottom_na extends StatefulWidget {
  const bottom_na({Key? key}) : super(key: key);

  @override
  State<bottom_na> createState() => _bottom_naState();
}
class _bottom_naState extends State<bottom_na> {
  int indexs =0;
  List<Widget>screens=[
    const home_screen(),
     oreder_screen(),
    const accout_user(),
    const setings_screen(),
  ];

  List<String>titles=[
    'Home',
    'Shopping Cart',
    'Account',
    'Settings',

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        elevation:0.0,
        backgroundColor:Colors.white,
        centerTitle:true,
        leading:IconButton(
          onPressed:(){
          },
          icon:const Icon(Icons.menu,color:Colors.black),
        ),
        title: Text(titles[indexs],style:const TextStyle(color:Colors.black)),
        actions: [
          IconButton(onPressed:(){},
              icon:const Icon(Icons.search,color:Colors.black,)
          )
        ],
      ),
      body:screens[indexs],
      bottomNavigationBar:
      BottomNavigationBar(
        type:BottomNavigationBarType.fixed,
        //showSelectedLabels:false,
        currentIndex:indexs,
        onTap:(index){
          setState(() {
            indexs=index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home,color:Colors.red),
            label:"Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_basket_outlined,color:Colors.red),
            label:"shopping",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.manage_accounts_outlined,color:Colors.red),
            label:"account",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings,color:Colors.red,),
            label:"Settings",
          ),

        ],),


    );
  }
}
