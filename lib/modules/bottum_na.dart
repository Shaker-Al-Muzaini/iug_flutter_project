// ignore_for_file: camel_case_types, non_constant_identifier_names, import_of_legacy_library_into_null_safe

import 'package:flutter/material.dart';
import 'package:iug_flutter_project/modules/accout_user.dart';
import 'package:iug_flutter_project/modules/home_screen.dart';
import 'package:iug_flutter_project/modules/order_screen.dart';
import 'package:iug_flutter_project/modules/seeting_scrren.dart';

import '../models/blocs.dart';
String baseUrl='https://mystoers.b-lingo.info';
String ConsumerKey='ck_e97d20bb6e4399a1a56c6f225055ff50164c133c';
String Consumersecret	='cs_7d007ea2f0cf7aa3616d017cd03cb96095fa3b57';

class bottom_na extends StatefulWidget {
  const bottom_na({Key? key}) : super(key: key);
  @override
  State<bottom_na> createState() => _bottom_naState();

}
class _bottom_naState extends State<bottom_na> {
  int indexs =0;
  List<Widget>screens=[
     home_screen(),
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
  bool isdark_stat = true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        elevation:0.0,
        centerTitle:true,
        leading:IconButton(
          onPressed:(){
          },
          icon:const Icon(Icons.menu,),
        ),
        title: Text(titles[indexs],),
        actions: [
          IconButton(onPressed:(){
            All_bloc_cubic.get(context).ChengThemeMode();
            setState(() {
            });
          },
            icon:All_bloc_cubic.get(context).isDark?
            const Icon
              (Icons
                .brightness_3) : const Icon
              (Icons.brightness_7_sharp),
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

