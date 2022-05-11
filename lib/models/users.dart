import 'package:flutter/material.dart';
import 'package:iug_flutter_project/shared/componest/componest.dart';


//info_prodect_Dete
List<prodect>prodects=[
  prodect(
    img:'images/OIP.png',
    category: 'phone',
    name: 'sdfsdf',
    price: '1505',
  ),
  prodect(
    img:'images/OIP.png',
    category: 'sdfew',
    name: 'adf',
    price: '904',
  ),
  prodect(
    img:'images/OIP.png',
    category: 'phone',
    name: 'sdfewf',
    price: '56',
  ),
  prodect(
    img:'images/OIP.png',
    category: 'erwedf',
    name: 'erwer',
    price: '15',
  ),
  prodect(
    img:'images/OIP.png',
    category: 'wer',
    name: 'wejwe',
    price: '90',
  ),
  prodect(
    img:'images/OIP.png',
    category: 'sdfjasdf',
    name: 'lsdsdf',
    price: '4865',
  ),

];

//end



//info_prodect_Types
List<teype_product>teypes=[
  teype_product(
    price: '50',
    name: 'Withe Dress',
    category: 'Women' ,
    img:'images/s.jpg' ,
  ),
  teype_product(
    price: '90',
    name: 'black Dress',
    category: 'Men' ,
    img:'images/s.jpg' ,
  )
];

//end


//Info_Oreder_product

List<ordering>orders=[
  ordering(
    img: 'images/OIP.png',
    category:'Women',
    name: 'Shaker',
    price: '98',
  ), ordering(
    img: 'images/OIP.png',
    category:'Women',
    name: 'Shaker',
    price: '98',
  ),


];

///end



//Info_accout_user_date

List<accout_date>accouts=[
  accout_date(
    name:('Edit Profile'),
    icon1:const Icon(Icons.edit,color:Colors.red),
    icon2: const Icon(Icons.arrow_forward_ios)
  ),
  accout_date(
      name:('Shipping Address'),
      icon1:const Icon(Icons.location_pin,color:Colors.red),
      icon2: const Icon(Icons.arrow_forward_ios)
  ),
  accout_date(
      name:('Order History'),
      icon1:const Icon(Icons.access_time_outlined,color:Colors.red),
      icon2: const Icon(Icons.arrow_forward_ios)
  ),
  accout_date(
      name:('Track Order'),
      icon1:const Icon(Icons.folder_outlined,color:Colors.red),
      icon2: const Icon(Icons.arrow_forward_ios)
  ),
  accout_date(
      name:('Cards'),
      icon1:const Icon(Icons.card_travel_sharp,color:Colors.red),
      icon2: const Icon(Icons.arrow_forward_ios)
  ),
  accout_date(
      name:('Notifications'),
      icon1:const Icon(Icons.notifications_none,color:Colors.red),
      icon2: const Icon(Icons.arrow_forward_ios)
  ),
  accout_date(
      name:('Log Out'),
      icon1:const Icon(Icons.login_outlined,color:Colors.red),
    icon2:const Icon(Icons.arrow_forward_ios),
  ),

];

