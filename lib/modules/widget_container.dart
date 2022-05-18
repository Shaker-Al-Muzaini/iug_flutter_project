import 'package:flutter/material.dart';

// ignore: camel_case_types
class widget_container extends StatelessWidget {
  const widget_container({
    Key? key,required this.selected,required this.marginEnd,
  }) : super(key: key);
  final bool selected;
  final double marginEnd;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 17,
      height: 4,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(2),
        color:selected ?  Colors.red :Colors.grey,
      ),
    );
  }
}