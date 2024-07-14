import 'package:flutter/material.dart';

import '../../../../../../core/units/app_colors.dart';
import '../../../../../../core/units/styles.dart';
import '../../../../../../core/widgets/design_auth_container.dart';
import 'forget_enter_email_widget.dart';

class ForgetPasswordBody extends StatelessWidget {
  const ForgetPasswordBody({super.key});



  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: DesignAuthContainer(
          color: Colors.white,
          widget: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 10,),
                Image.asset(
                  'assets/images/forget.jpg',
                  width: 200,
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                    textAlign: TextAlign.center,
                    'Please, inter your email',
                    style: Styles.textStyle24w600.copyWith(
                      color: AppColors.primaryBlueColor,
                    )),
                const SizedBox(
                  height: 20,
                ),
                const ForgetEnterEmailWidget(),
                const SizedBox(
                  height: 60,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}