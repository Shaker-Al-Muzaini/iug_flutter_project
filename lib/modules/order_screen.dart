// ignore_for_file: camel_case_types, avoid_print
import 'package:flutter/material.dart';
import 'package:iug_flutter_project/models/users.dart';
import 'package:iug_flutter_project/shared/componest/componest.dart';
class oreder_screen extends StatefulWidget {
  const oreder_screen({Key? key}) : super(key: key);

  @override
  State<oreder_screen> createState() => _oreder_screenState();
}

class _oreder_screenState extends State<oreder_screen> {
  var cont =0;
  @override
  Widget build(BuildContext context) {
    return
      Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height:240,
                color:Colors.black54,
                child:Padding(
                  padding: const EdgeInsets.only(left:20,top:150),
                  child: Column(
                    crossAxisAlignment:CrossAxisAlignment.start,
                    children:const[
                      Text('Your Oreder',
                        style:TextStyle(
                          color:Colors.white,
                          fontSize:24,
                          fontWeight:FontWeight.w700,
                        ),
                      ),
                      Text('Oreder NO.#123-456',
                        style:TextStyle(
                          color:Colors.white,
                          fontSize:14,
                          fontWeight:FontWeight.w300,
                        ),
                      ),
                    ]
                  ),
                ),
              ),
                     ListView.separated(
                       shrinkWrap:true,
                       physics:const NeverScrollableScrollPhysics(),
                       itemBuilder:(context,index)=>order((orders[index]),),

                       separatorBuilder:(context,index)=>const SizedBox(height:5),
                       itemCount:orders.length,
                     )
            ],

          ),
        ),
      );

  }
  Widget order(ordering o)=>Column(
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
                    child:   Image(
                      image:AssetImage(o.img!),
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
                      children:  [
                        Text(o.name!,
                          style:const TextStyle(
                            fontSize:20,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:150),
                          child: Text('\$'+o.price!,
                              style:
                              const TextStyle(
                                  color:Colors.red)
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom:5),
                    child: Row(
                      children:  [
                        Text(o.category!,
                          style:const TextStyle(
                            fontSize:15,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children:[
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top:20),
                            child: Container(
                              width: 137,
                              height:37,
                              decoration: BoxDecoration(
                                borderRadius:BorderRadius.circular(1),
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
                                        style:TextStyle(
                                          fontSize:14,
                                          fontWeight:FontWeight.w700,
                                          color:Colors.black,
                                        )),
                                  ),
                                  Text('$cont' ,style:const TextStyle(
                                    fontSize:14,

                                  )),
                                  TextButton(
                                    onPressed:(){
                                      setState(() {
                                        cont--;
                                        print(cont);
                                      });
                                    },
                                    child: const Text('-',
                                        style:TextStyle(
                                          fontSize:14,
                                          fontWeight:FontWeight.w700,
                                          color:Colors.black,

                                        )),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left:60),
                            child: Container(
                              decoration: BoxDecoration(
                                  color:Colors.red,
                                  borderRadius:BorderRadius.circular(1)),
                              child: IconButton(onPressed:(){},
                                  icon:const Icon(
                                    Icons.delete,color:Colors.white,
                                    size:35,
                                  )),
                            ),
                          ),
                        ],
                      ),
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
