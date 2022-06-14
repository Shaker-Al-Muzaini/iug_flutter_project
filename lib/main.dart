// ignore_for_file: unused_import, unused_local_variable, must_be_immutable, use_key_in_widget_constructors 
import 'package:firebase_core/firebase_core.dart'; 
import 'package:flutter/services.dart'; 
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:iug_flutter_project/shared/network/cache_helper.dart';
import 'firebase_options.dart';  
import 'package:flutter/material.dart';
import 'package:iug_flutter_project/modules/login.dart';
import 'models/blocs.dart';
import 'models/states.dart';
import 'modules/Page_view.dart';
import 'modules/add_prodect.dart';  
import 'modules/bottum_na.dart';
import 'modules/home_screen.dart';
import 'modules/screen4.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
   await Firebase.initializeApp();
   await Cache_Helper.init();
   bool?  isDark =Cache_Helper.getData(key: 'isDark');
  runApp( MyApp(isDark!));
}
class  MyApp extends StatelessWidget{
  late bool isDark;
  MyApp(this.isDark);
  @override 
  Widget build(BuildContext context) {
    return   BlocProvider(
      create: (BuildContext context)=>All_bloc_cubic()..ChengThemeMode(Shard:
      isDark),
      child:BlocConsumer<All_bloc_cubic ,All_Statels>(
        listener:( context, state){},
        builder:( context ,state){
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme:ThemeData(
              appBarTheme: const AppBarTheme(
                surfaceTintColor:Colors.white,
                iconTheme:IconThemeData(
                  color:Colors.black,
                ),
                backgroundColor:Colors.white,
                systemOverlayStyle:SystemUiOverlayStyle(
                  statusBarColor:Colors.white,
                  statusBarIconBrightness:Brightness.dark,
                ),
                elevation: 0.0,
                titleTextStyle:TextStyle(color:Colors.black,fontWeight:FontWeight
                    .bold,fontSize:20),
              ),
              scaffoldBackgroundColor:Colors.white,
              bottomNavigationBarTheme:const
              BottomNavigationBarThemeData(
                selectedItemColor:Colors.deepOrange,
              ),
            ), 
            darkTheme:ThemeData(
              appBarTheme: AppBarTheme(
                surfaceTintColor:Colors.white,
                iconTheme:const IconThemeData(
                  color:Colors.white,
                ),
                backgroundColor:HexColor('333739'),
                systemOverlayStyle:SystemUiOverlayStyle(
                  statusBarColor:HexColor('333739'),
                  statusBarIconBrightness:Brightness.light,
                ),
                elevation: 0.0,
                titleTextStyle:const TextStyle(color:Colors.white,fontWeight:FontWeight
                    .bold,fontSize:20),
              ),
              scaffoldBackgroundColor:HexColor('333739'),
              bottomNavigationBarTheme:
              BottomNavigationBarThemeData(
                unselectedItemColor:Colors.white,
                selectedItemColor:Colors.deepOrange,
                backgroundColor:HexColor('333739'),
              ),
              textTheme:const TextTheme(
                bodyText2:TextStyle(
                  color:Colors.white,
                ),
                bodyText1:TextStyle(
                  color:Colors.white,
                ),
                caption:TextStyle(
                  color:Colors.white,
                ),
                subtitle1:TextStyle(
                  color:Colors.white,
               ),
       
              ),
              iconTheme:const IconThemeData(
                  color:Colors.white
              ),
              toggleableActiveColor:Colors.white,
            ),
            themeMode:All_bloc_cubic.get(context).isDark?ThemeMode.dark
                :ThemeMode.light ,
            home:const Page_View(),
          );
        },
      ),
    );
  }
}

