
// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iug_flutter_project/models/blocs.dart';
import 'package:iug_flutter_project/models/states.dart';
import 'prodect_screen.dart';
import '../shared/componest/componest.dart';

class home_screen extends StatelessWidget {
   home_screen({Key? key}) : super(key: key);
   final List<String> images = [
     'https://sc01.alicdn.com/kf/Hc120553e92834db1b43cd6aae95b0269k/Cheap-mobile-new-model-bests-studio-bulk.jpg',
     'https://cdn.mena-tech.com/wp-content/uploads/2021/07/%D8%A7%D8%B3%D8%B9%D8%A7%D8%B1-%D8%AC%D9%88%D8%A7%D9%84%D8%A7%D8%AA-%D8%B3%D8%A7%D9%85%D8%B3%D9%88%D9%86%D8%AC.jpg',
     'https://www.albayan.ae/polopoly_fs/1.3601003.1562606608!/image/image.jpg',
     'https://tiqny.com/wp-content/uploads/2022/01/%D8%A7%D8%B3%D8%B9%D8%A7%D8%B1-%D9%85%D9%88%D8%A8%D8%A7%D9%8A%D9%84%D8%A7%D8%AA-%D9%87%D9%88%D8%A7%D9%88%D9%8A-%D9%81%D9%8A-%D9%85%D8%B5%D8%B1.jpg',
     'https://www.magltk.com/wp-content/uploads/2018/07/%D8%A7%D9%84%D9%83%D8%A7%D9%85%D9%8A%D8%B1%D8%A7%D8%AA-%D8%B0%D8%A7%D8%AA-%D8%A7%D9%84%D9%86%D8%B8%D8%A7%D9%85-%D8%A7%D9%84%D9%85%D8%AF%D9%85%D8%AC.jpg',
     'https://www.almrsal.com/wp-content/uploads/2019/04/%D9%83%D8%A7%D9%85%D9%8A%D8%B1%D8%A7-1-300x150.jpg',
   ];
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
                child: Column(
                  children: [
                    SizedBox(
                      width:double.infinity,
                      height:160,
                    child: CarouselSlider.builder(
                      itemCount: images.length,
                      options: CarouselOptions(
                        autoPlay: true,
                        aspectRatio: 1.0,
                        enlargeCenterPage: true,
                      ),
                      itemBuilder: (context, index, realIdx) {
                        return Center(
                            child: Image.network(images[index],
                                fit: BoxFit.cover, width:double
                            .infinity));
                      },
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: GridView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              childAspectRatio: 1,
                              mainAxisExtent: 300,
                              mainAxisSpacing: 5,
                            ),
                            itemBuilder: (context, index) =>
                                prodect_list(All_bloc_cubic.get(context).prodect_views[index],context),
                             itemCount:All_bloc_cubic.get(context).prodect_views.length,
                          ),
                        )
                      ],
                    ),
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
       Padding(
         padding: const EdgeInsets.all(8.0),
         child: Column(
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
                   child: SizedBox(
                     height: 200,
                     width:160,
                     child: Image(
                       image: NetworkImage(p.img),
                       fit:BoxFit.cover,
                  ),
                   ),
               ),
             ),
             Expanded(
               child: Row(
                 mainAxisSize: MainAxisSize.max,
                 crossAxisAlignment:CrossAxisAlignment.end,
                 children: [
                   SizedBox(
                     width:110,
                       height:15,
                       child: Text(p.name!)),
                   IconButton(
                     onPressed:(){
                       All_bloc_cubic.get(context).isShos();
                     },
                     icon: Icon(Icons.business_center_rounded ,
                       color:All_bloc_cubic.get(context).isShop ? Colors.black
                           :Colors.red,),
                   ),
                 ],
               ),
             ),
             Expanded(
               child: Row(
                 crossAxisAlignment:CrossAxisAlignment.end,
                 children:[
                   SizedBox(
                       width:110,
                       height:15,
                       child:Text(p.category!),
                   ),
                   IconButton(
                     onPressed:(){
                        All_bloc_cubic.get(context).isFavorts();
                     },
                     icon:Icon(Icons.favorite_border,
                         color:All_bloc_cubic.get(context).isFavort ?Colors.black : Colors.red),
                   ),
                 ],
               ),
             ),
             Expanded(
               child: SizedBox(
                 width:158,
                 child: Row(
                   crossAxisAlignment:CrossAxisAlignment.end,
                   children:[
                      Text('\$${p.price!}',style:const TextStyle(color:Colors.red)),
                   ],
                 ),
               ),
             ),
           ],
         ),
       ),
     ],
   );
}



