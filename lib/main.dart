import 'package:flutter/material.dart';
//import 'package:iug_flutter_project/modules/login.dart';
import 'package:iug_flutter_project/modules/screen4.dart';

void main() {
  runApp(const MyApp());
}
class  MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:screen4(),
    );
  }
}
