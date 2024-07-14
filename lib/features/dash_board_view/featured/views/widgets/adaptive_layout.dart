import 'package:flutter/material.dart';

class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout({super.key, required this.mobile, required this.tablet, required this.web});
final WidgetBuilder mobile;
final WidgetBuilder tablet;
final WidgetBuilder web;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context,constrains) {
          if(constrains.maxWidth<600) {
            return  mobile(context);
          }else if(constrains.maxWidth<900){
            return tablet(context);
          }else{
            return web(context);
          }
        }
    );
  }
}
