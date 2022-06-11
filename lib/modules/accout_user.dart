// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iug_flutter_project/models/users.dart';
import 'package:iug_flutter_project/shared/componest/componest.dart';
import '../models/blocs.dart';
import '../models/states.dart';
import 'L_admim.dart';


class accout_user extends StatelessWidget {
   const accout_user({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return
      BlocProvider(
        create: (BuildContext context)=>All_bloc_cubic(),

        child: BlocConsumer<All_bloc_cubic ,All_Statels>(
          listener:(context ,state){},
          builder:(context , state){
            return SingleChildScrollView(
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

                        children:  const [
                          Text('ShakerAlMauaini',
                              style:TextStyle(
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
                      itemBuilder:(context,index)=>accout(accouts[index],context),
                      separatorBuilder:(context,index)=>const SizedBox(height:7,),
                      itemCount:accouts.length)
                ],
              ),
            );
          },


        ),
      );
  }

  Widget accout(accout_date a,context)=>Row(
    children: [
      Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(
          decoration: BoxDecoration(
              color:const Color.fromARGB(100, 255, 42, 42),
              borderRadius:BorderRadius.circular(1)),
          child: IconButton(onPressed:a.on_tap!(),
              icon:(a.icon1!),
              )),
        ),
       Expanded(child: Text(a.name!,style:const TextStyle(fontSize:18),)),
      Padding(
        padding:  const EdgeInsets.only(left:170),
        child: IconButton(onPressed:(){
          Navigator.push(context,
              MaterialPageRoute(builder:(context)=>
                  l_admin())
          );
        },
            icon:a.icon2!
        ),
      )

    ],
  );
}
