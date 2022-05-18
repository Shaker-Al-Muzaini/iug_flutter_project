// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:iug_flutter_project/modules/prodect_screen.dart';
import 'firebase_options.dart';

// import 'package:iug_flutter_project/modules/order_screen.dart';
import 'modules/bottum_na.dart';

// await Firebase.initializeApp(
// options: DefaultFirebaseOptions.currentPlatform,
// );

// void main() async {
//
//     await Firebase.initializeApp(
//   );
//   runApp(const MyApp());
// }

void main() {
   Firebase.initializeApp();
  runApp(

      const MyApp());
}


class  MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return     const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:bottom_na(),
    );
  }
}




