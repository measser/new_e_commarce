import 'dart:async';

import 'package:comamarce/core/units/app_colors.dart';
import 'package:comamarce/core/units/routing/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SafeArea(child: SplashViewBody()));
  }
}
class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {

  @override
  void initState() {
    super.initState();
    Timer(const Duration(
      milliseconds: 5500
    ),
        (){
      context.go(AppRoute.login);
        }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Center(child: Lottie.asset('assets/splash/basket.json'));
  }
}
