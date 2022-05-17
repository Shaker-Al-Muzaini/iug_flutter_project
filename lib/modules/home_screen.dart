// ignore_for_file: camel_case_types, non_constant_identifier_names, must_be_immutable


import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iug_flutter_project/models/users.dart';
import 'package:iug_flutter_project/modules/prodect_screen.dart';
import '../models/blocs.dart';
import '../models/states.dart';
import '../shared/componest/componest.dart';
class home_screen extends StatelessWidget {
  const home_screen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return
      // appBar:AppBar(
      //   elevation:0.0,
      //   backgroundColor:Colors.white,
      //   centerTitle:true,
      //   leading:IconButton(
      //     onPressed:(){
      //       Navigator.push(context,
      //           MaterialPageRoute(builder:(context)=> const accout_user()));
      //     },
      //     icon:const Icon(Icons.menu,color:Colors.black),
      //     ),
      //   title:const Text('Home',style:TextStyle(color:Colors.black)),
      //   actions: [
      //     IconButton(onPressed:(){},
      //         icon:const Icon(Icons.search,color:Colors.black,)
      //     )
      //   ],
      // ),
      BlocProvider(
        create: (BuildContext context)=>All_bloc_cubic(),
        child: BlocConsumer<All_bloc_cubic , All_Statels>(
          listener: (BuildContext context, state) {},
          builder:(BuildContext context ,state){
            return SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Expanded(
                      child: GridView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 1,
                          mainAxisExtent: 290,
                          mainAxisSpacing: 10,
                        ),
                        itemBuilder: (context, index) =>
                            prodect_list(prodects[index],context),
                        itemCount: prodects.length,


                      ),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      );
  }

   Widget prodect_list (prodect p ,context)=>  Row(
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
                     MaterialPageRoute(builder: (context)=> const Prodect_secreen())
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
                     All_bloc_cubic.get(context).isShos();
                   },
                   icon: Icon(Icons.business_center_rounded ,
                     color:All_bloc_cubic.get(context).isShop ? Colors.black
                         :Colors.red,),
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
                      All_bloc_cubic.get(context).isFavorts();
                   },
                   icon:Icon(Icons.favorite ,
                       color:All_bloc_cubic.get(context).isFavort ?Colors.black : Colors.red),
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

