import 'package:flutter/material.dart';

import '../../../../../core/units/app_colors.dart';
import '../../../../../core/units/styles.dart';
import '../../../../../core/widgets/text_button.dart';
import '../../../../../core/widgets/text_form_field_widget.dart';

class SettingProfileBody extends StatelessWidget {
  const SettingProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Full Name',
              style: Styles.textStyle16,
            ),
            const SizedBox(
              height: 10,
            ),
            AppTextFormField(
              hintColor: AppColors.black12Color,
              keyboardType: TextInputType.text,
              controller: TextEditingController(),
              validator: (value) {},
              hintText: 'full name',
              borderRadius: BorderRadius.circular(50),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Email',
              style: Styles.textStyle16,
            ),
            const SizedBox(
              height: 10,
            ),
            AppTextFormField(
              hintColor: AppColors.black12Color,
              controller: TextEditingController(),
              validator: (value) {},
              hintText: 'email',
              borderRadius: BorderRadius.circular(50),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Phone Number',
              style: Styles.textStyle16,
            ),
            const SizedBox(
              height: 10,
            ),
            AppTextFormField(
              hintColor: AppColors.black12Color,
              controller: TextEditingController(),
              validator: (value) {},
              hintText: 'phone number',
              borderRadius: BorderRadius.circular(50),
              maxLength: 11,
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'birthday',
              style: Styles.textStyle16,
            ),
            const SizedBox(
              height: 10,
            ),
            AppTextFormField(
              hintColor: AppColors.black12Color,
              controller: TextEditingController(),
              validator: (value) {},
              hintText: 'birthday',
              borderRadius: BorderRadius.circular(50),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'City',
              style: Styles.textStyle16,
            ),
            const SizedBox(
              height: 10,
            ),
            AppTextFormField(
              hintColor: AppColors.black12Color,
              borderRadius: BorderRadius.circular(50),
              controller: TextEditingController(),
              validator: (value) {},
              hintText: 'cairo',
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'gender',
              style: Styles.textStyle16,
            ),
            const SizedBox(
              height: 10,
            ),
            AppTextFormField(
              hintColor: AppColors.black12Color,
              borderRadius: BorderRadius.circular(50),
              controller: TextEditingController(),
              validator: (value) {
                return null;
              },
              hintText: 'male',
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                    child: AppTextButton(
                      onPressed: () {},
                      text: 'Edit',
                      backgroundColor: AppColors.primaryBlueColor,
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}