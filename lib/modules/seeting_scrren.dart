// ignore_for_file: camel_case_types, non_constant_identifier_names, avoid_web_libraries_in_flutter


import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iug_flutter_project/models/blocs.dart';

import '../models/states.dart';
import '../shared/componest/componest.dart';

class setings_screen extends StatelessWidget {
   const setings_screen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context){
    return BlocProvider(
      create: (BuildContext context)=>All_bloc_cubic(),
      child: BlocConsumer<All_bloc_cubic,All_Statels>(
        listener: (BuildContext context ,state){},
        builder:(BuildContext context,state){
          return  Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment:CrossAxisAlignment.start,
              children: [
                const Text('Your App Settings',style:TextStyle(fontSize:20),
                    textAlign: TextAlign.start),
               const SizedBox(height:20),
                SwitchListTile(
                  title:const Text('Notifications'),
                  inactiveThumbColor:Colors.grey,
                  subtitle:const Text('Receive offers notifications on '
                      'latest '
                      'offers and '
                      'store updates'),
                  activeColor:Colors.red,
                  value:All_bloc_cubic.get(context).is_on,
                  onChanged:(value){
                    All_bloc_cubic.get(context).SwitchListTile_Setting();
                  },
                ),
                const SizedBox(height:25),
                  SwitchListTile(
                    title:const Text('Popups'),
                    inactiveThumbColor:Colors.grey,
                    activeColor:Colors.red,
                    subtitle:const Text('Disable all popups and adverts '
                        'from  third party vendors'),
                   value:All_bloc_cubic.get(context).is_on2,
                    onChanged:(value){
                      All_bloc_cubic.get(context).SwitchListTile_Setting2();
                    },
            ),
                const SizedBox(height:25),
                SwitchListTile(
                  title:const Text('Order History'),
                  inactiveThumbColor:Colors.grey,
                  subtitle:const Text('Keep your order history on the app unless '
                      'manually removed'),
                  activeColor:Colors.red,
                  value:All_bloc_cubic.get(context).is_on3,
                  onChanged:(value){
                    All_bloc_cubic.get(context).SwitchListTile_Setting3();
                  },
                ),
                const SizedBox(height:75),
                De_Button(
                  backgroundColor:Colors.redAccent,
                  function:(){
                  },
                  text:'UPDATE SETTINGS',
                  BorderRadiuss:10,

                ),
              ],
            ),
          );
        },



      ),
    );
  }
}
