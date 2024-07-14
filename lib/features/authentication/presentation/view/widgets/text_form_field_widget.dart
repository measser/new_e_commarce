import 'package:animated_loading_border/animated_loading_border.dart';
import 'package:comamarce/features/authentication/presentation/manager/login_cubit/login_cubit.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import '../../../../../core/units/app_colors.dart';
import '../../../../../core/units/routing/app_routes.dart';
import '../../../../../core/units/styles.dart';
import '../../../../../core/widgets/text_button.dart';
import '../../../../../core/widgets/text_form_field_widget.dart';



class TextFormFieldWidget extends StatelessWidget{
  const TextFormFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = context.read<LoginCubit>();
    return BlocBuilder<LoginCubit, LoginState>(builder: (context,state){
      return Form(
        key: cubit.formKey,
        child: Column(
          children: [
            AppTextFormField(
              onChange: (data) {
                cubit.emailController.text = data;
              },
              controller: cubit.emailController,
              hintText: 'Email',
              keyboardType: TextInputType.emailAddress,
              validator: (value) {
                if (value == null || (value == '')) {
                  return 'enter email';
                }
                return null;
              },
            ),
            const SizedBox(height: 16),
            AppTextFormField(
              onChange: (data) {
                cubit.passwordController.text = data;
              },
              icon: Icons.visibility,
              controller: cubit.passwordController,
              hintText: 'Password',
              keyboardType: TextInputType.visiblePassword,
              validator: (value) {
                if (value == null || (value == '')) {
                  return 'enter password';
                }
                return null;
              },
            ),
            Align(
              alignment: AlignmentDirectional.topEnd,
              child: AppTextButton(
                onPressed: () {
                  context.push(AppRoute.forgetPassword);
                },
                text: 'forget password?',
                textColor: Colors.grey,
                styles: Styles.textStyle16,
              ),
            ),
            const SizedBox(height: 16),
            ConditionalBuilder(
              condition: !cubit.isLoading,
              builder: (context) => Row(
                children: [
                  Expanded(
                    child: AppTextButton(
                      text: 'Login',
                      styles: Styles.textStyle22,
                      backgroundColor: AppColors.primaryBlueColor,
                      onPressed: () {
                        cubit.loginValidate();
                      },
                    ),
                  ),
                ],
              ),
              fallback: (context) => Center(
                  child: LoadingAnimationWidget.waveDots(
                      color: AppColors.primaryBlueColor, size: 35)),
            ),
          ],
        ),
      );
    });

  }
}
