import 'package:comamarce/features/dash_board_view/featured/views/widgets/custom_drawer.dart';
import 'package:comamarce/features/dash_board_view/featured/views/widgets/dash_board_view_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DashBoardView extends StatefulWidget {
  const DashBoardView({super.key});

  @override
  State<DashBoardView> createState() => _DashBoardViewState();
}

class _DashBoardViewState extends State<DashBoardView> {
  GlobalKey<ScaffoldState> scaffoldKey =GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffDBDBDB),
        key:scaffoldKey ,
        drawer:const CustomDrawer(),
        appBar:MediaQuery.sizeOf(context).width -32 <900? buildAppBar():null,
        body: const DashBoardViewBody());
  }

  AppBar buildAppBar() {
    return AppBar(
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        leading: IconButton(
          onPressed: (){
            scaffoldKey.currentState!.openDrawer();
          },
          icon: const Icon(Icons.menu),
        ),
      );
  }
}
















