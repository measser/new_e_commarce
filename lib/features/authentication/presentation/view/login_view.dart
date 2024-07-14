import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:comamarce/core/units/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/units/routing/app_routes.dart';
import '../../../../core/units/styles.dart';
import '../../../../core/widgets/appbar_widget.dart';
import 'widgets/login_view_body.dart';

class LoginView extends HookWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: CustomAppBar(
        titleWidget: AnimatedTextKit(
            totalRepeatCount: 100000,
            pause: const Duration(seconds: 6),
            animatedTexts: [
              TyperAnimatedText('Welcome Login',

                  textAlign: TextAlign.center,
                  textStyle: Styles.textStyle24w600.copyWith(
                    color: AppColors.primaryBlueColor,
                  )),
            ]),
        leading: IconButton(onPressed: (){
          context.push(AppRoute.managerLogin);
        }, icon:const Icon(FontAwesomeIcons.circleUser,color: AppColors.primaryBlueColor,))
      ),
        body:const LoginViewBody(),
    );
  }
}





