
// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iug_flutter_project/models/blocs.dart';
import 'package:iug_flutter_project/models/states.dart';
import 'prodect_screen.dart';
import '../shared/componest/componest.dart';

class home_screen extends StatelessWidget {
  const home_screen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return
      BlocProvider(
        create: (BuildContext context)=>All_bloc_cubic()..Get_Prodect(),

        child: BlocConsumer<All_bloc_cubic ,All_Statels>(
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
                            prodect_list(All_bloc_cubic.get(context).prodect_views[index],context),
                         itemCount:All_bloc_cubic.get(context).prodect_views.length,
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

   Widget prodect_list (add_prodect p ,context)=>  Row(
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
                 child: Image(
                   image: NetworkImage(p.img),
                   height:170,
                   width:170,
                ),
             ),
           ),
           Row(
             children: [
               Padding(
                 padding: const EdgeInsets.only(right:45),
                 child: Expanded(child: Text(p.name!)),
               ),
               Padding(
                 padding: const EdgeInsets.only(left:25),
                 child: IconButton(
                   onPressed:(){
                     All_bloc_cubic.get(context).isShos();
                   },
                   icon: Expanded(
                     child: Icon(Icons.business_center_rounded ,
                       color:All_bloc_cubic.get(context).isShop ? Colors.black
                           :Colors.red,),
                   ),
                 ),
               ),
             ],
           ),
           Row(
             children:[
               Padding(
                 padding: const EdgeInsets.only(right:45),
                 child: Expanded(child: Text(p.category!)),
               ),
               Padding(
                 padding: const EdgeInsets.only(left:25),
                 child: IconButton(
                   onPressed:(){
                      All_bloc_cubic.get(context).isFavorts();
                   },
                   icon:Expanded(
                     child: Icon(Icons.favorite_border,
                         color:All_bloc_cubic.get(context).isFavort ?Colors.black : Colors.red),
                   ),
                 ),
               ),
             ],
           ),
           Padding(
             padding:  const EdgeInsets.only(right:125),
             child: Row(
               children:[
                 Text('\$'+p.price!,style:const TextStyle(color:Colors.red)),
               ],
             ),
           ),
         ],
       ),
     ],
   );
}



