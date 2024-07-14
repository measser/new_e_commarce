import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/units/routing/app_routes.dart';
import '../../../../core/widgets/appbar_widget.dart';
import 'widgets/home_view_body_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: CustomAppBar(
        onPressed: (){
          context.push(AppRoute.myCart);
        },
        icon: FontAwesomeIcons.cartPlus,
        text: 'Home Page'
      ) ,
      body:const HomeViewBody(),
    );
  }


}

