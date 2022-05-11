import 'package:flutter/material.dart';
// import 'package:iug_flutter_project/modules/order_screen.dart';
import 'package:iug_flutter_project/modules/prodect_screen.dart';
import 'modules/bottum_na.dart';

void main() {
  runApp(const MyApp());
}
class  MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:bottom_na(),
    );
  }
}

