
// ignore_for_file: camel_case_types, non_constant_identifier_names, prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iug_flutter_project/models/states.dart';
import 'package:iug_flutter_project/modules/bottum_na.dart';
import 'package:iug_flutter_project/shared/componest/componest.dart';
import '../models/blocs.dart';
import '../models/users.dart';
import 'add_pro.dart';
class Prodect_secreen extends StatelessWidget{

  const Prodect_secreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context){
    return BlocProvider(
      create: (BuildContext context)=>All_bloc_cubic()..Get_Prodect(),
      child: BlocConsumer<All_bloc_cubic ,All_Statels>(
        listener: (BuildContext context, state){},
        builder:(BuildContext context ,state){
          return  Scaffold(
            appBar:AppBar(
              centerTitle:true,
              backgroundColor:Colors.black54,
              elevation:0.0,
              leading:
              IconButton(
                  onPressed:(){
                    Navigator.push(context,MaterialPageRoute
                      (builder: (context)=>const bottom_na()));
                  },
                  icon:
                  const Icon(Icons.arrow_back_ios_rounded,color:Colors.white)
              ),
              title:const Text('Head Phone',style:TextStyle(color:Colors.white)),
              actions: [
                IconButton(
                    onPressed:(){
                      All_bloc_cubic.get(context).Favort_prdect();
                    },
                    icon:
                    Icon(Icons.favorite,
                        color:All_bloc_cubic.get(context).isFavort ?Colors.white : Colors.red))
              ],
            ),
            body:
            SingleChildScrollView(
              scrollDirection:Axis.vertical,
              child: Column(
                children: [
                  Container(
                    color:Colors.black54,
                    width:double.infinity,
                    height:270,
                    child: const Image(
                      image:AssetImage('images/OIP.png'),
                      height:170,
                      width:170,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                        children: const [
                          Expanded(child: Text('Gucci Sunglasses',
                              style:TextStyle(
                                fontSize:24,
                                fontWeight:FontWeight.bold,
                              )
                          )
                          ),
                          Text('\$45',
                              style:
                              TextStyle(
                                  fontSize:18,
                                  fontWeight:FontWeight.w400)
                          ),
                        ]
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                        crossAxisAlignment:CrossAxisAlignment.start,
                        mainAxisAlignment:MainAxisAlignment.start,
                        children: const [
                          Text('Description',
                              style:TextStyle(
                                fontSize:20,
                                fontWeight:FontWeight.w600,
                              )
                          ),
                          SizedBox(
                            height:5,
                          ),
                          Text('if you\'re offered a seat on a rocket ship, don\'t ask '
                              'what seat! just get on board and move the sail towards '
                              'the destination.',
                              style:
                              TextStyle(
                                  fontSize:15,
                                  fontWeight:FontWeight.w400
                              )),

                        ]
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(12.0),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left:10),
                          child: De_Button(
                            backgroundColor:Colors.redAccent,
                            function:(){
                              Navigator.push(context,
                                  MaterialPageRoute(builder:(context)=>
                                      add_pro())
                              );
                            },
                            text:'ADD TO CART',
                            BorderRadiuss:20,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:110),
                        child: Padding(
                          padding: const EdgeInsets.only(right:8.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius:BorderRadius.circular(180),
                            ),
                            child: Row(
                              children:[
                                TextButton(
                                  onPressed:(){
                                    All_bloc_cubic.get(context).cont_plus();
                                  },
                                  child: const Text('+',
                                      style: TextStyle(
                                        fontSize:20,
                                        fontWeight:FontWeight.w700,
                                      )),
                                ),
                                Text('${All_bloc_cubic.get(context).cont}' ,style:const
                                TextStyle(

                                )),
                                TextButton(
                                  onPressed:(){
                                   All_bloc_cubic.get(context).cout_minus();
                                  },
                                  child: const Text('-',
                                      style: TextStyle(
                                        fontSize:20,
                                        fontWeight:FontWeight.w700,
                                      )),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                      // ToggleButtons(
                      //   borderRadius: BorderRadius.circular(30),
                      //   borderColor: Colors.orange,
                      //   borderWidth: 3,
                      //   selectedBorderColor: Colors.deepOrange, isSelected: [false],
                      //   ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      children: const [
                        Text('You May Also Like',
                          style:TextStyle(
                            fontSize:18,
                            fontWeight:FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  ListView.separated(
                      shrinkWrap:true,
                      physics:const NeverScrollableScrollPhysics(),
                      itemBuilder:(context,index)=>Cart_Prodect
                        (teypes[index],context),
                      separatorBuilder:(context,index)=>const SizedBox(height:2),
                      itemCount:teypes.length)
                ],
              ),
            ),
          );
        },

      ),
    );
  }

  Widget  Cart_Prodect( teype_product  t  , context)=>Column(
      children:[
        Row(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration:BoxDecoration(
                      border:Border.all(width:1),
                    ),
                    child:  Image(
                      image:AssetImage(t.img!),
                      height:120,
                      width:120,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom:10),
              child: Column(
                crossAxisAlignment:CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom:10),
                    child: Row(
                      children: [
                        Text(t.name!,
                          style:const TextStyle(
                            fontSize:20,
                          ),
                        ),
                        Padding(
                          padding:  const EdgeInsets.only(left:110),
                          child: Text('\$'+t.price!,
                              style:
                              const TextStyle(
                                  color:Colors.red)
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom:15),
                    child: Row(
                      children: [
                        Text(t.category!,
                          style:const TextStyle(
                            fontSize:15,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children:[
                      IconButton(
                          onPressed:(){
                             // All_bloc_cubic.get(context).isshopp_prdect=!All_bloc_cubic.get(context).isshopp_prdect;
                             All_bloc_cubic.get(context).isshopp_prdects();
                          },
                          icon:
                          Icon(Icons.business_center_rounded,
                              color:All_bloc_cubic.get(context)
                                  .isshopp_prdect ? Colors.black :
                              Colors.red)),
                      IconButton(
                          onPressed:(){
                            All_bloc_cubic.get( context).Favort_prdect();
                          },
                          icon:
                          Icon(Icons.favorite,
                              color:All_bloc_cubic.get(context).isFavort_prdect ?Colors
                                  .black :
                              Colors.red))
                    ],
                  ),
                ],
              ),
            ),
          ],

        ),
      ]
  );

}
