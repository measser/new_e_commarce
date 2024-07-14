import 'package:comamarce/core/units/shared/helper/api_keys.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'core/units/app_colors.dart';
import 'core/units/routing/app_router.dart';
import 'observers.dart';


void main() {
  Stripe.publishableKey=ApiKeys.publishKey;
  Bloc.observer=SimpleBlocObserver();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      builder: (context, child) => ResponsiveBreakpoints.builder(
        child: child!,
        breakpoints: [
          const Breakpoint(start: 0, end: 450, name: 'MOBILE'),
          const Breakpoint(start: 451, end: 800, name: 'TABLET'),
          const Breakpoint(start: 801, end: 1920, name: 'DESKTOP'),
          const Breakpoint(start: 1921, end: double.infinity, name: '4K'),
        ],
      ),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: false
      ).copyWith(
        primaryColor:  AppColors.primaryColor,
        appBarTheme:const   AppBarTheme(
          foregroundColor: Colors.black87,
          backgroundColor: AppColors.primaryColor,
          elevation: 0,
          centerTitle: true,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: AppColors.primaryColor,
            statusBarIconBrightness: Brightness.dark
          ),
          titleTextStyle: TextStyle(color: Colors.black87,fontSize: 20),
        ),
        scaffoldBackgroundColor:AppColors.primaryColor,
      ),
      routerConfig: AppRouter.router,
    );
  }
}


