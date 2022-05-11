// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:iug_flutter_project/models/users.dart';
import 'package:iug_flutter_project/shared/componest/componest.dart';

class accout_user extends StatelessWidget {
  const accout_user({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:AppBar(
        elevation:0.0,
        backgroundColor:Colors.white,
        centerTitle:true,
        leading:IconButton(
          onPressed:(){},
          icon:const Icon(Icons.menu,color:Colors.black),
        ),
        title:const Text('Account',style:TextStyle(color:Colors.black)),
        actions: [
          IconButton(onPressed:(){},
              icon:const Icon(Icons.search,color:Colors.black,)
          )
        ],
      ),
      body:
      SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children:  [
                      const Image(
                      image:AssetImage('images/s.jpg'),
                      height:120,
                      width:120,
                      ),
                Column(
                  children: const [
                    Text('Shaker Almazuini',style:TextStyle(
                      fontSize:14,
                      fontWeight:FontWeight.w600,
                    )),
                    Text('sshakiralmaznin.gmail.com',style:TextStyle(
                      fontSize:12,
                      fontWeight:FontWeight.w500,
                    )),
                  ],
                ),
              ],
            ),
           ListView.separated(
             shrinkWrap:true,
               physics:const NeverScrollableScrollPhysics(),
               itemBuilder:(context,index)=>accout(accouts[index]),
               separatorBuilder:(context,index)=>const SizedBox(height:7,),
               itemCount:accouts.length)
          ],
        ),
      ),
    );
  }

  Widget accout(accout_date a)=>Row(
    children: [
      Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(
          decoration: BoxDecoration(
              color:const Color.fromARGB(100, 255, 42, 42),
              borderRadius:BorderRadius.circular(1)),
          child: IconButton(onPressed:(){},
              icon:(a.icon1!),
              )),
        ),
       Expanded(child: Text(a.name!,style:const TextStyle(fontSize:18),)),
      Padding(
        padding: const EdgeInsets.only(left:170),
        child: IconButton(onPressed:(){},
            icon:a.icon2!
        ),
      )

    ],
  );
}
