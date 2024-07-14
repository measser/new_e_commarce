import 'package:animated_loading_border/animated_loading_border.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:comamarce/core/units/routing/app_routes.dart';
import 'package:comamarce/core/units/shared/helper/api_service.dart';
import 'package:comamarce/core/widgets/show_snack_bar.dart';
import 'package:comamarce/core/widgets/text_button.dart';
import 'package:comamarce/features/authentication/data/repos/auth_repos_impl.dart';
import 'package:comamarce/features/authentication/presentation/manager/login_cubit/login_cubit.dart';
import 'package:comamarce/features/authentication/presentation/view/widgets/text_form_field_widget.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/units/app_colors.dart';
import '../../../../../core/units/styles.dart';
import '../../../../../core/widgets/design_auth_container.dart';
import 'featured_login_view_widget.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(AuthReposImpl(ApiService())),
      child: BlocConsumer<LoginCubit, LoginState>(
        listener: (context, state) {
            if (state is LoginSuccess) {
            context.go(AppRoute.home);
          }
        },
        builder: (context, state) {
          return Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: AnimatedLoadingBorder(
                borderColor: Colors.black,
                cornerRadius: 22,
                child: DesignAuthContainer(
                  widget: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                      child: Column(
                        children: [
                          const SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    FontAwesomeIcons.facebook,
                                    color: Colors.blue,
                                    size: 40,
                                  )),
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    FontAwesomeIcons.google,
                                    color: Colors.red,
                                    size: 40,
                                  )),
                            ],
                          ),
                          const SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Container(
                                  height: 1,
                                  color: AppColors.black12Color,
                                ),
                              ),
                               Text(
                                '  or  ',
                                style: Styles.textStyle18w400.copyWith(
                                  color: AppColors.black12Color
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  height: 1,
                                  color: AppColors.black12Color,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),
                          if (state is LoginError)
                          Container(
                            padding: const EdgeInsets.all(20),
                            alignment: Alignment.center,
                            decoration: ShapeDecoration(
                              color: AppColors.black12Color.withOpacity(0.1),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              )
                            ),
                            child: Text(state.errMassage,style: Styles.textStyle14.copyWith(
                              color: Colors.red
                            ),),
                          ),
                          if (state is LoginError)
                          const SizedBox(
                            height: 30,
                          ),
                          const TextFormFieldWidget(),
                          const SizedBox(height: 5,),
                          const FeaturedLoginViewBody(),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
// AnimatedTextKit(
// animatedTexts: [
// TypewriterAnimatedText(
// 'Hello world!',
// textStyle: const TextStyle(
// fontSize: 32.0,
// fontWeight: FontWeight.bold,
// ),
// speed: const Duration(milliseconds: 2000),
// ),
// ],
//
// totalRepeatCount: 4,
// pause: const Duration(milliseconds: 1000),
// displayFullTextOnTap: true,
// stopPauseOnTap: true,
// )
