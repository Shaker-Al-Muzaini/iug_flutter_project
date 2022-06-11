// ignore_for_file: camel_case_types, non_constant_identifier_names
import 'package:flutter/material.dart';
import 'package:iug_flutter_project/modules/screen4.dart';
import 'package:iug_flutter_project/modules/widget_container.dart';
import 'package:iug_flutter_project/modules/widget_page_view.dart';

class Page_View extends StatefulWidget {
  const Page_View({Key? key}) : super(key: key);

  @override
  State<Page_View> createState() => _Page_ViewState();
}

class _Page_ViewState extends State<Page_View> {

  late PageController _pageController;
  int _cureent_page=0;
  @override
  void initState() {
    super.initState();
    _pageController=PageController();
  }
  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(

          children: [
            Visibility(
              visible: _cureent_page!=2,
              replacement: Align(
                alignment: AlignmentDirectional.topEnd,
                child: TextButton(onPressed: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder:(context)=> const screen4()));

                },
                  child: const Text('START',style: TextStyle(
                  color: Colors.red,fontWeight: FontWeight.bold,  fontSize: 16,

                ),),),
              ),
              child: Align(
                alignment: AlignmentDirectional.topEnd,
                child: TextButton(onPressed: (){
                  _pageController.animateToPage(2, duration:
                  const Duration(seconds: 1), curve:Curves.bounceIn);
                }, child:const Text('SKIP',style: TextStyle(
                  color:Colors.red,
                  fontSize: 16,

                ),
                ),
                ),

              ),
            ),

            Expanded(
              child:PageView(
                onPageChanged: (int page){
                  setState(() {
                    _cureent_page=page;
                  });
                },
                controller: _pageController,
                scrollDirection: Axis.horizontal,
                children: const [
                  widget_page_view(subtitle:'Used and near new used needs at great prices',
                     image: 'images/image2.png', title: 'Discounted Used Needs',),

                  widget_page_view(subtitle:'Weve successfully opened 20 stores across Australia',
                     image: 'images/image3.png', title: '20 grocery items nationwide',),
   
                   widget_page_view(subtitle:'Now you dont need to go and bear the fatigue to pay your dues',
                    image: 'images/image1.png', title: 'Electronic payment support',),

                ],
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                widget_container(selected:_cureent_page==0, marginEnd: 14),
                const SizedBox(width: 15,),
                widget_container(selected:_cureent_page==1, marginEnd: 14),
               const SizedBox(width: 15,),
                widget_container(selected:_cureent_page==2, marginEnd: 14),
              ],
            ),
           const SizedBox(height: 80,),
          ],
        ),
      ),
    );
  }
}