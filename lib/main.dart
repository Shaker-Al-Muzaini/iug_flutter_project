// ignore_for_file: unused_import
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:iug_flutter_project/modules/login.dart';
import 'modules/Page_view.dart';
import 'modules/add_prodect.dart';
import 'modules/bottum_na.dart';
import 'modules/home_screen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
   await Firebase.initializeApp();
  runApp(
      const MyApp());
}
class  MyApp extends StatefulWidget{
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {

    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:bottom_na(),
    );
  }
}
