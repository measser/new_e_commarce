import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/units/routing/app_routes.dart';
import '../../../../../core/units/shared/app_state_cubit/app_state_cubit.dart';
import 'app_icon_and_text_container.dart';

class FeaturedMyAccountListView extends StatelessWidget {
  const FeaturedMyAccountListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppStateState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  BlocProvider.of<AppCubit>(context).changeScreen(1);
                },
                child: const AppIconAndTextContainer(
                  text: 'My Orders',
                  icon: FontAwesomeIcons.box,
                  backgroundColor: Colors.purple,
                ),
              ),
              const SizedBox(height: 7,),
              GestureDetector(
                onTap: (){
                  BlocProvider.of<AppCubit>(context).changeScreen(3);
                },
                child: const AppIconAndTextContainer(
                  text: 'Favourite',
                  icon: FontAwesomeIcons.solidHeart,
                  backgroundColor: Colors.red,
                ),
              ),
              const SizedBox(height: 7,),
              GestureDetector(
                onTap: () {
                  context.go(AppRoute.login);
                },
                child: const AppIconAndTextContainer(
                  text: 'Log Out',
                  icon: FontAwesomeIcons.arrowRightFromBracket,
                  backgroundColor: Colors.red,
                ),
              ),

            ],
          ),
        );
      },
    );
  }
}