
// ignore_for_file: camel_case_types, non_constant_identifier_names, must_be_immutable, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iug_flutter_project/models/blocs.dart';
import 'package:iug_flutter_project/models/states.dart';

import '../models/states.dart';
import 'login.dart';

class add_prodects extends StatelessWidget {
        add_prodects({Key?  key,}) : super(key: key);
       var name_controller=TextEditingController();
       var category_controller=TextEditingController();
       var price_controller=TextEditingController();


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:(BuildContext context)=>All_bloc_cubic(),
      child: BlocConsumer<All_bloc_cubic ,All_Statels>(
        listener:(context, state){},
        builder: (context ,state){
          //var model = All_bloc_cubic.get(context).model;
          dynamic image_prdect=All_bloc_cubic.get(context).image_prdect;
          return Scaffold(
            appBar:AppBar(
              centerTitle:true,
              title:const Text('Add Prodect'),
            ),
            body:
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    TextFormField(
                      controller:name_controller,
                      decoration:const InputDecoration(
                        hintText: 'name is  prodect',
                      ),
                    ),
                    const SizedBox(height: 15),
                    TextFormField(
                      controller: category_controller,
                      decoration:const InputDecoration(
                        hintText: 'category is  prodect',
                      ),

                    ),
                    const SizedBox(height: 15),
                    TextFormField(
                      controller:price_controller,
                      decoration:const InputDecoration(
                        hintText: 'price is  prodect',
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: TextButton(
                          onPressed:(){
                            All_bloc_cubic.get(context).pickImage();
                          },
                          child:Row(
                            mainAxisAlignment:MainAxisAlignment.center,
                            children: const [
                              Icon(
                                Icons.image,
                              ),
                              Text('image_prodect'),
                            ],
                          ),
                      ),
                        ),
                        Expanded(
                          child: TextButton(
                            onPressed:() async{
                               All_bloc_cubic.get(context).update_product(
                                 category:category_controller.text,
                                 price:price_controller.text ,
                                 name:name_controller.text ,
                                 id_prdect:'1',
                               );
                               Navigator.push(context,MaterialPageRoute
                                 (builder: (context)=>   login_secrrn()));

                            },
                            child:Row(
                              mainAxisAlignment:MainAxisAlignment.center,
                              children: const [
                                Icon(
                                  Icons.save,
                                ),
                                Text('Save'),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                     const SizedBox(height:10),
                image_prdect != null ? Image.file(image_prdect):const Text("ad")
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

