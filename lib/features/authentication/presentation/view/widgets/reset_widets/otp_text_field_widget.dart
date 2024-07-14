import 'package:comamarce/core/widgets/text_button.dart';
import 'package:comamarce/features/authentication/presentation/manager/otp_cubit/otp_cubit.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import '../../../../../../core/units/app_colors.dart';
import '../../../../../../core/units/styles.dart';
import '../../../../../../core/widgets/text_form_field_widget.dart';

class OtpTextFieldWidget extends StatefulWidget {
  const OtpTextFieldWidget({super.key, required this.email,});
  final String email ;
  @override
  State<OtpTextFieldWidget> createState() => _OtpTextFieldWidgetState();
}

class _OtpTextFieldWidgetState extends State<OtpTextFieldWidget> {
  String _otp = '';

  @override
  Widget build(BuildContext context) {
    var cubit =context.read<OtpCubit>();
    return Column(
      children: [
        OtpTextField(
          disabledBorderColor: Colors.red,
          numberOfFields: 6,
          fieldWidth: MediaQuery.sizeOf(context).width*.11,
          fieldHeight: 65,
          fillColor: Colors.amber,
          cursorColor: AppColors.primaryBlueColor,
          borderRadius: BorderRadius.circular(12),
          showFieldAsBox: true,
          focusedBorderColor: AppColors.primaryBlueColor,
          enabledBorderColor: Colors.black26,
          onSubmit: (String verificationCode) {
            _otp=verificationCode;
          },
        ),
        const SizedBox(
          height: 20,
        ),
        ConditionalBuilder(
          condition: !cubit.isLoading,
          builder: (context)=>Row(
            children: [
              Expanded(
                child: AppTextButton(
                  onPressed: () {
                    cubit.emailController.text=widget.email;
                    context.read<OtpCubit>().verify(_otp);

                  },
                  text: 'Continue',
                  backgroundColor: AppColors.primaryBlueColor,
                  styles: Styles.textStyle22,
                ),
              ),
            ],
          ),
          fallback:(context)=> Center(child: LoadingAnimationWidget.fourRotatingDots(color: AppColors.primaryBlueColor, size: 35),),
        )
      ],
    );
  }
}