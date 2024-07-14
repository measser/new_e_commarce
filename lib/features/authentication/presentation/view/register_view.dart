import 'package:comamarce/core/units/routing/app_routes.dart';
import 'package:comamarce/core/units/shared/helper/api_service.dart';
import 'package:comamarce/core/widgets/appbar_widget.dart';
import 'package:comamarce/core/widgets/show_snack_bar.dart';
import 'package:comamarce/features/authentication/data/models/login_model/Login_model.dart';
import 'package:comamarce/features/authentication/data/repos/auth_repos_impl.dart';
import 'package:comamarce/features/authentication/presentation/manager/register_cubit/register_cubit.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

import '../../../../core/units/app_colors.dart';
import '../../../../core/units/styles.dart';
import '../../../../core/widgets/text_button.dart';
import '../../../../core/widgets/text_form_field_widget.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegisterCubit(AuthReposImpl(ApiService())),
      child: Scaffold(
        appBar: CustomAppBar(),
        body: const SafeArea(
          child: RegisterViewBody(),
        ),
      ),
    );
  }
}


class RegisterViewBody extends StatelessWidget {


  const RegisterViewBody({super.key,});


  @override
  Widget build(BuildContext context) {
    var cubit = context.read<RegisterCubit>();
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Form(
            key: cubit.forKey,
            child: BlocConsumer<RegisterCubit, RegisterState>(
              listener: (context, state) {
                if (state is RegisterSuccess) {
                  showSnackBar(
                      context, 'Ensure this field has at least 12 characters.');
                  String email = cubit.emailController.text;
                  context.push(AppRoute.resetPassword,extra: email);
                }else if(state is RegisterError){
                  showSnackBar(
                      context, state.errMassage);
                }
              },
              builder: (context, state) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Register your account to open story',
                      textAlign: TextAlign.center,
                      style: Styles.textStyle24w600
                          .copyWith(color: AppColors.primaryBlueColor),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    AppTextFormField(
                        controller: cubit.firstNameController,
                        validator: (value) {
                          if (value == null || (value == '')) {
                            return 'Enter First Name';
                          }
                          return null;
                        },
                        hintText: 'First Name'),
                    const SizedBox(
                      height: 10,
                    ),
                    AppTextFormField(
                        controller: cubit.lastNameController,
                        validator: (value) {
                          if (value == null || (value == '')) {
                            return 'Enter Last Name';
                          }
                          return null;
                        },
                        hintText: 'Last Name'),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: AppTextFormField(

                            controller: cubit.userNameController,
                            validator: (value) {
                              if (value == null || (value == '')) {
                                return 'Enter User Name';
                              }
                              return null;
                            },
                            hintText: 'User Name',
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Expanded(
                          child: AppTextFormField(
                              controller: cubit.phoneNumberController,
                              validator: (value) {
                                if (value == null || (value == '')) {
                                  return 'Enter Phone Number';
                                }
                                return null;
                              },
                              hintText: 'Phone Number'),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    AppTextFormField(
                        controller: cubit.emailController,
                        validator: (value) {
                          if (value == null || (value == '')) {
                            return 'Enter New Password';
                          }
                          return null;
                        },
                        hintText: 'Email'),
                    const SizedBox(
                      height: 10,
                    ),
                    AppTextFormField(
                        controller: cubit.password1Controller,
                        validator: (value) {
                          if (value == null || (value == '')) {
                            return 'Enter New Password';
                          }
                          return null;
                        },
                        hintText: 'Password'),
                    const SizedBox(
                      height: 10,
                    ),
                    AppTextFormField(
                        controller: cubit.password2Controller,
                        validator: (value) {
                          if (value == null || (value == '')) {
                            return 'Enter New Password';
                          }
                          return null;
                        },
                        hintText: 'Conform password'),
                    const SizedBox(
                      height: 40,
                    ),
                    ConditionalBuilder(condition: !cubit.isLoading,
                        builder: (context)=>Row(
                          children: [
                            Expanded(
                              child: AppTextButton(
                                onPressed: () {
                                  cubit.registerValidation();
                                },
                                text: 'REGISTER',
                                backgroundColor: AppColors.primaryBlueColor,
                              ),
                            ),
                          ],
                        ),
                        fallback: (context)=>Center(child: LoadingAnimationWidget.fourRotatingDots(color: AppColors.primaryBlueColor, size: 35))
                    ),
                    const SizedBox(height: 10,),
                    const CustomRegisterButton(),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

class CustomRegisterButton extends StatelessWidget {
  const CustomRegisterButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          'You have an account?',
          style: Styles.textStyle14,
        ),
        const SizedBox(width: 5,),
        GestureDetector(
          onTap: () {
            context.pop();
          },
          child: Text(
            'Login',
            style: Styles.textStyle14.copyWith(
                color: AppColors.primaryBlueColor
            ),
          ),
        ),
      ],
    );
  }
}
