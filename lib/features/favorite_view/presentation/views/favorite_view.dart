
import 'package:comamarce/core/widgets/appbar_widget.dart';
import 'package:comamarce/features/favorite_view/presentation/views/favorite_skeleton/favorite_skeleton_view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/units/routing/app_routes.dart';
import 'widgets/favorite_view_body.dart';


class FavoriteView extends StatelessWidget {
  const FavoriteView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: CustomAppBar(
        text: 'Favorite',
        icon: FontAwesomeIcons.cartPlus,
        onPressed: (){
          context.push(AppRoute.myCart);
        }
      ),
      body:const FavoriteViewBody(),
    );
  }
}









