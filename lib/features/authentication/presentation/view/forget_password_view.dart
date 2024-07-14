
import 'package:flutter/material.dart';
import 'widgets/forget_widgets/forget_password_body.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body:const SafeArea(child: ForgetPasswordBody()),
    );
  }
}





