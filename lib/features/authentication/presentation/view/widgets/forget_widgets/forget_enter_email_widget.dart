import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/units/app_colors.dart';
import '../../../../../../core/units/routing/app_routes.dart';
import '../../../../../../core/units/styles.dart';
import '../../../../../../core/widgets/text_button.dart';
import '../../../../../../core/widgets/text_form_field_widget.dart';

class ForgetEnterEmailWidget extends StatefulWidget {
  const ForgetEnterEmailWidget({super.key});

  @override
  State<ForgetEnterEmailWidget> createState() => _ForgetEnterEmailWidgetState();
}

class _ForgetEnterEmailWidgetState extends State<ForgetEnterEmailWidget> {
  final emailController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key:formKey ,
      child: Column(
        children: [
          AppTextFormField(
            controller: emailController,
            validator: (value) {
              if (value == null || (value == '')) {
                return 'Please, enter email';
              }
              return null;
            },
            hintText: 'Enter Email',
            keyboardType: TextInputType.emailAddress,
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Expanded(
                child: AppTextButton(
                  text: 'Submit',
                  styles: Styles.textStyle22,
                  onPressed: (){
                    if(formKey.currentState!.validate()){}
                    context.push(AppRoute.resetPassword);
                  },
                  backgroundColor: AppColors.primaryBlueColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}