import 'package:flutter/material.dart';

import '../../../../../../core/units/app_colors.dart';
import '../../../../../../core/units/styles.dart';
import '../../../../../../core/widgets/design_auth_container.dart';
import 'change_pass_text_form_field.dart';

class ChangePasswordBody extends StatelessWidget {
  const ChangePasswordBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: DesignAuthContainer(
          widget: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 20,),
                Text(
                  'Set your new flickr Password',
                  textAlign: TextAlign.center,
                  style:
                  Styles.textStyle24w600.copyWith(color: AppColors.primaryBlueColor),
                ),
                const SizedBox(
                  height: 20,
                ),
                const ChangePasswordTextFormFieldWidget(),
                const SizedBox(height: 20,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}