
import 'package:comamarce/features/dash_board_view/featured/views/widgets/tablet_layout.dart';
import 'package:comamarce/features/dash_board_view/featured/views/widgets/web_layout.dart';
import 'package:flutter/material.dart';


import 'adaptive_layout.dart';
import 'mobile_layout.dart';






class DashBoardViewBody extends StatelessWidget {
  const DashBoardViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:const EdgeInsets.symmetric(horizontal: 16.0),
      child:AdaptiveLayout(
        mobile:(context)=> const MobileLayOut(),
        tablet:(context) =>const TabletLayOut(),
        web:(context)=> const WebLayOut(),
      ),
    );
  }
}


