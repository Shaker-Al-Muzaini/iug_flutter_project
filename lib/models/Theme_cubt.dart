import 'package:hydrated_bloc/hydrated_bloc.dart';

class  Theme_cubelt extends HydratedCubit<bool>{
  Theme_cubelt(state) : super(true);
  void toggTheme({required bool value}){
    emit(value);
  }

  @override
  bool ? fromJson(Map<String,dynamic> json) {
   return json['isDart'];
  }

  @override
  Map<String, dynamic>? toJson(bool state) {
    return {
      'isDart':state
    };
  }
}

