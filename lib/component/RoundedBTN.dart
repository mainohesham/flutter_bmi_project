import 'package:flutter/material.dart';


class RoundedBTN extends StatelessWidget {
  final IconData? icon;
  final VoidCallback? onpress;
  final Color? color;
  RoundedBTN({this.icon,this.onpress,this.color});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
        child: Icon(icon,size: 30),
        onPressed: onpress,
        elevation: 0,
        constraints: BoxConstraints.tightFor(height: 56,width: 56),
        shape: CircleBorder(),
        fillColor:color
    );
  }
}