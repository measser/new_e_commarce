import 'package:flutter/material.dart';

import '../units/styles.dart';

AppBar CustomAppBar({
  String? text,
   VoidCallback? onPressed,
   IconData? icon,
    Widget? child,
    Widget? leading,
  double? elevation=0,
   Widget? titleWidget,
  Color? color= Colors.transparent,
}) => AppBar(
  leading: leading,
    backgroundColor: color,
    title: titleWidget??Text(text??'',style: Styles.textStyle24w600,) ,
    actions: [
      IconButton(onPressed: onPressed, icon:  Icon(icon,color: Colors.black,)),
      child ?? Container(),
    ],
    elevation: elevation,
  );