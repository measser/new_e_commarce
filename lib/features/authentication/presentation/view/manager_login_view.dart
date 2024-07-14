import 'package:animated_loading_border/animated_loading_border.dart';
import 'package:comamarce/core/widgets/appbar_widget.dart';
import 'package:comamarce/core/widgets/text_button.dart';
import 'package:comamarce/features/dash_board_view/featured/views/dash_board_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../../core/units/app_colors.dart';
import '../../../../core/units/styles.dart';
import '../../../../core/widgets/design_auth_container.dart';
import '../../../../core/widgets/text_form_field_widget.dart';

class ManagerLoginView extends StatelessWidget {
  const ManagerLoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: const ManagerLoginViewBody(),
    );
  }
}

class ManagerLoginViewBody extends HookWidget {
  const ManagerLoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = useMemoized(() => GlobalKey<FormState>());
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: AnimatedLoadingBorder(
          borderColor: Colors.black,
          cornerRadius: 22,
          child: DesignAuthContainer(
            widget: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                          textAlign: TextAlign.center,
                          'Welcome back to login manager',
                          style: Styles.textStyle24w600.copyWith(
                            color: AppColors.primaryBlueColor,
                          )),
                      const SizedBox(height: 16),
                      AppTextFormField(
                        controller: emailController,
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
                        icon: Icons.visibility,
                        controller: passwordController,
                        hintText: 'Password',
                        keyboardType: TextInputType.visiblePassword,
                        validator: (value) {
                          if (value == null || (value == '')) {
                            return 'enter password';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 25),
                      Row(
                        children: [
                          Expanded(
                              child: AppTextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const DashBoardView(),
                                ),
                              );
                            },
                            text: 'Login',
                            backgroundColor: AppColors.primaryBlueColor,
                          )),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
    ;
  }
}
