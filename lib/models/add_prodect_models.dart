// ignore_for_file: non_constant_identifier_names, camel_case_types
//S_user

class add_prodect{
  late final String img;
  late final String? name;
  late final String? category;
  late final String? price;
  late  final String? id_prdect;

  add_prodect({
    required this.img,
    required this.name,
    required this.category,
    required this.price,
    this.id_prdect,
  });
  add_prodect.formjson(Map<String,dynamic>json){
    img=json['img'];
    name=json['name'];
    category=json['category'];
    price=json['price'];
    id_prdect=json['id_prdect'];
  }
  Map<String,dynamic>toMap(){
    return{
      'category':category,
      'img':img,
      'name':name,
      'price':price,
      'uId':id_prdect,
    };
  }


}
