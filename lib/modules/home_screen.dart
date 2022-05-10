// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class home_screen extends StatefulWidget {
  const home_screen({Key? key}) : super(key: key);

  @override
  State<home_screen> createState() => _home_screenState();
}

class _home_screenState extends State<home_screen> {
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
      body:Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border:Border.all(width:1.5),

                      color:Colors.black,
                    ),
                    child: const Image(
                      image:AssetImage("images/OIP.jfif"),
                      height:170,
                      width:170,
                    ),
                  ),
                  Row(
                    children: [
                      const Expanded(child:Text('Shaker')),
                      Expanded(
                        child: IconButton(
                          onPressed:(){},
                          icon:const Icon(Icons.business_center_rounded ,color:Colors.black),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Expanded(child:Text('Shaker')),
                      Expanded(
                        child: IconButton(
                          onPressed:(){},
                          icon:const Icon(Icons.thumb_up ,color:Colors.black),
                        ),
                      ),
                    ],
                  ),
                  Row(

                    children: const [
                      Text('Shaker',textAlign:TextAlign.start,),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border:Border.all(width:1.5),

                      color:Colors.black,
                    ),
                    child: const Image(
                      image:AssetImage("images/OIP.jfif"),
                      height:170,
                      width:170,
                    ),
                  ),
                  Row(
                    children: [
                      const Expanded(child:Text('Shaker')),
                      Expanded(
                        child: IconButton(
                          onPressed:(){},
                          icon:const Icon(Icons.business_center_rounded ,color:Colors.black),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Expanded(child:Text('Shaker')),
                      Expanded(
                        child: IconButton(
                          onPressed:(){},
                          icon:const Icon(Icons.thumb_up ,color:Colors.black),
                        ),
                      ),
                    ],
                  ),
                  Row(

                    children: const [
                      Text('Shaker',textAlign:TextAlign.start,),
                    ],
                  ),
                ],
              ),
            ),



          ],
        ),
      )
    );
  }
}
