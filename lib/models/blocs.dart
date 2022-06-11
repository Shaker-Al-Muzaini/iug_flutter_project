// ignore_for_file: camel_case_types, non_constant_identifier_names, avoid_print, unused_element

import 'dart:io';
import 'dart:math';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:iug_flutter_project/models/states.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import '../shared/componest/componest.dart';
import '../shared/network/cache_helper.dart';

final storage = FirebaseStorage.instance;
class All_bloc_cubic extends Cubit<All_Statels> {
  All_bloc_cubic() :super(initialStates());
  static All_bloc_cubic get(context) => BlocProvider.of(context);
  bool isShop = true;
  void isShos() {
    isShop = !isShop;
    emit(isShoping());
  }

  bool isFavort = true;

  void isFavorts() {
    isFavort = !isFavort;
    emit(isFavorting());
  }

  var cont = 0;

  void cont_plus() {
    cont++;
    emit(is_cout_plus());
  }

  void cout_minus() {
    cont--;
    emit(is_cout_minus());
  }


  bool isFavort_prdect = true;

  void Favort_prdect() {
    isFavort_prdect = !isFavort_prdect;
    emit(isFavort_prdects());
  }


  bool isshopp_prdect = true;

  void isshopp_prdects() {
    isshopp_prdect = !isshopp_prdect;
    emit(isshopp_prdecting());
  }


  int cont_order = 0;

  void cont_order_plus() {
    cont_order++;
    emit(cont_ordering_plus());
  }

  void cont_order_minus() {
    cont_order--;
    emit(cont_ordering_minus());
  }


  bool ispass = true;

  void ispasswored() {
    ispass = !ispass;
    emit(ispasswored_stet());
  }


  Future<void> user_Login({
    required String password,
    required String email,
    required String name,
  }) async {
    emit(user_loding());
  }
  Future <void> user_Regestar({
    required String name,
    required String email,
    required String password,
    String? uId,
  }) async {
    emit(user_R());
    try {
      await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
        email: email,
        password: password,
      ).then((value) {
        print('a');
        print(value.user!.email);
        print(value.user!.uid);
        emit(user_successful());
      }).catchError((error) {
        e;
      });
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    }
  }

  void Lo_out() {
    emit(user_loOut());
  }


  bool saving = false;

  void lodig_bot() {
    emit(lodiding());
  }

  String? name;
  String? email;
  String? password;
  String? uId;

  //FirebaseStore
  void create_user_info_store() {
    getData() async {
      CollectionReference users = FirebaseFirestore.instance.collection('user');
      await users.add({
        'username': name,
        'email': email,
      });
      emit(user_successful());
    }
  }

//changeBottom
  Map<int, bool>favorite = {};
  File? image_prdect;

  Future<void> pickImage() async {
    final image_prdect = await ImagePicker().pickImage(
        source: ImageSource.gallery);
    if (image_prdect != null) {
      final Image_Temp = File(image_prdect.path);
      this.image_prdect = Image_Temp;
      print(Image_Temp);
      print(image_prdect.path);
      emit(ImagePicker_successful());
    } else {
      emit(ImagePicker_error());
      print('NO');
    }
  }

  //up_image_picker
  String url_image = '';

  void update_product({
    required String? name,
    required String? category,
    required String? price,
    required String? id_prdect,
  }) async{
    emit(Add_new_prdect());
   await firebase_storage.FirebaseStorage.instance.ref().child
      ('image_prdect/${Uri
        .file(image_prdect!.path)
        .pathSegments
        .last}')
        .putFile(image_prdect!)
        .then((value) {
      value.ref.getDownloadURL().then((value) =>
      {
        emit(ImagePicker_successful()),
        print(value),
        url_image = value,
        create_new_prodect(
          id_prdect: id_prdect,
          category: category,
          price: price,
          name: name,
          image_prdects:url_image,
        ),
      }).catchError((error) =>
      {
        emit(ImagePicker_error()),
        print(error)
      });
    }).catchError((error) {
      emit(ImagePicker_error());
    });
  }

  void create_new_prodect({
    required String? name,
    required String? category,
    required String? price,
    required String? id_prdect,
    String? image_prdects,
  }) async{
    add_prodect model = add_prodect(
        name: name,
        price: price,
        img:image_prdects!,
        category: category,
        id_prdect: id_prdect

    );
    await FirebaseFirestore.instance.collection
      ('prodect_Data_info').
    doc().set(model.toMap()).then((value) {
      emit(user_successful());
    }).catchError((error) {
      emit(user_error(error.toString()));
    });
  }
  List<add_prodect> prodect_views = [];
  void Get_Prodect() async{
   await FirebaseFirestore.instance
        .collection('prodect_Data_info')
        .get().
    then((value) {
     emit(get_successful());
      for (var element in value.docs) {
        prodect_views.add(add_prodect.formjson(element.data()));
      }
    })
       .catchError((error) {
            emit(get_error());

    });
  }


  //Settings
  bool is_on = false;
  bool is_on2=false;
  bool is_on3=false;
void SwitchListTile_Setting() {
  is_on = !is_on;
  emit(is_SwitchListTile_Setting());
}
  void SwitchListTile_Setting2() {
    is_on2 = !is_on2;
    emit(is_SwitchListTile_Setting());
  }
  void SwitchListTile_Setting3() {
    is_on3 = !is_on3;
    emit(is_SwitchListTile_Setting());
  }

  bool isDark =false;
void  ChengThemeMode({ bool? Shard}){
  if(Shard != null) {
    isDark =Shard;
    emit(stat_ThemeMode());
  } else {
    isDark =! isDark;
    Cache_Helper.putData(key: 'isDark', value:isDark).
    then((value){
      emit(stat_ThemeMode());
    });
  }
}


}