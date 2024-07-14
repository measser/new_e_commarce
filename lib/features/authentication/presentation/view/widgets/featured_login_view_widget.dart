
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/units/app_colors.dart';
import '../../../../../core/units/routing/app_routes.dart';
import '../../../../../core/units/styles.dart';
import '../../../../../core/widgets/text_button.dart';
import 'text_form_field_widget.dart';

class FeaturedLoginViewBody extends StatelessWidget {
  const FeaturedLoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('don\'t have an account?',style: Styles.textStyle14,),
            GestureDetector(
              onTap: (){
                context.push(AppRoute.register);
              },
              child: Text('Register',style: Styles.textStyle14.copyWith(
                color: AppColors.primaryBlueColor
              )),
            )

          ],
    );
  }
}


