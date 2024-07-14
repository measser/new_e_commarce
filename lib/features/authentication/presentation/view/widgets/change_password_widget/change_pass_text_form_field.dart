import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/units/app_colors.dart';
import '../../../../../../core/units/routing/app_routes.dart';
import '../../../../../../core/units/styles.dart';
import '../../../../../../core/widgets/text_button.dart';
import '../../../../../../core/widgets/text_form_field_widget.dart';

class ChangePasswordTextFormFieldWidget extends StatefulWidget {
  const ChangePasswordTextFormFieldWidget({super.key});

  @override
  State<ChangePasswordTextFormFieldWidget> createState() =>
      _ChangePasswordTextFormFieldWidgetState();
}

class _ChangePasswordTextFormFieldWidgetState
    extends State<ChangePasswordTextFormFieldWidget> {
  final keyForm = GlobalKey<FormState>();
  final newPassword = TextEditingController();
  final confirmPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: keyForm,
      child: Column(
        children: [
          AppTextFormField(
              controller: newPassword,
              validator: (value) {
                if (value == null || (value == '')) {
                  return 'Enter New Password';
                }
                return null;
              },
              hintText: 'New Password'),
          const SizedBox(
            height: 10,
          ),
          AppTextFormField(
              controller: confirmPassword,
              validator: (value) {
                if (value == null || (value == '')) {
                  return 'This Password not exsist';
                }
                return null;
              },
              hintText: 'conform Password'),
          const SizedBox(
            height: 40,
          ),
          Row(
            children: [
              Expanded(
                child: AppTextButton(
                  onPressed: () {
                    if (keyForm.currentState!.validate()) {}
                    context.go(AppRoute.login);
                  },
                  text: 'Submit',
                  styles: Styles.textStyle24w600,
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
