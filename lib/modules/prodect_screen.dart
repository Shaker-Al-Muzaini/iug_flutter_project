// ignore_for_file: camel_case_types, non_constant_identifier_names, avoid_print, unnecessary_const
import 'package:flutter/material.dart';
import 'package:iug_flutter_project/shared/componest/componest.dart';
class Prodect_secreen extends StatefulWidget {
  const Prodect_secreen({Key? key}) : super(key: key);

  @override
  State<Prodect_secreen> createState() => _Prodect_secreen();
}

class _Prodect_secreen extends State<Prodect_secreen> {
  bool isFavort_prdect =true;
  bool isshopp_prdect =true;

  var  cont =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        centerTitle:true,
        backgroundColor:Colors.black54,
        elevation:0.0,
        leading:
        IconButton(
            onPressed:(){
              Navigator.pop(context);
            },
            icon:
            const Icon(Icons.arrow_back_ios_rounded,color:Colors.white)
        ),
         title:const Text('Head Phone',style:TextStyle(color:Colors.white)),
        actions: [
          IconButton(
              onPressed:(){
                setState(() {
                  isFavort_prdect=!isFavort_prdect;
                });
              },
              icon:
               Icon(Icons.favorite,
              color:isFavort_prdect ?Colors.white : Colors.red))
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
                        color:Colors.black12,
                      ),
                      child: Row(
                        children:[
                          TextButton(
                            onPressed:(){
                              setState(() {
                                cont++;
                                print(cont);
                              });
                            },
                            child: const Text('+',
                                style:const TextStyle(
                                  fontSize:20,
                                  fontWeight:FontWeight.w700,
                                  color:Colors.black,
                                )),
                          ),
                          Text('$cont' ,style:const TextStyle(

    )),
                          TextButton(
                            onPressed:(){
                              setState(() {
                                cont--;
                                print(cont);
                              });
                            },
                            child: const Text('-',
                                style:const TextStyle(
                                  fontSize:20,
                                  fontWeight:FontWeight.w700,
                                  color:Colors.black,

                                )),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
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
                 itemBuilder:(context,index)=>Cart_Prodect(),
                 separatorBuilder:(context,index)=>const SizedBox(height:2),
                 itemCount:2)
           ],
         ),
       ),
    );
  }
  Widget Cart_Prodect()=>Column(
      children: [
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
                    child: const Image(
                      image:AssetImage('images/OIP.png'),
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
                      children:const [
                        Text('white Dress',
                          style:TextStyle(
                            fontSize:20,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left:110),
                          child: Text('\$15',style:
                          TextStyle(
                              color:Colors.red)
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom:15),
                    child: Row(
                      children:const [
                        Text('Women',
                          style:TextStyle(
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
                            setState(() {
                              isshopp_prdect=!isshopp_prdect;
                            });
                          },
                          icon:
                          Icon(Icons.business_center_rounded,
                              color:isshopp_prdect ?Colors.black :
                              Colors.red)),
                      IconButton(
                          onPressed:(){
                            setState(() {
                              isFavort_prdect=!isFavort_prdect;
                            });
                          },
                          icon:
                          Icon(Icons.favorite,
                              color:isFavort_prdect ?Colors.black :
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
