
import 'package:comamarce/features/home_view/presentation/views/widgets/custom_bottom_navigationbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/units/shared/app_state_cubit/app_state_cubit.dart';


class HomeButtonNavBar extends StatelessWidget {
  const HomeButtonNavBar({super.key});



  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppCubit(),
      child: BlocBuilder<AppCubit, AppStateState>(
        builder: (context, state) {
          AppCubit cubit =BlocProvider.of<AppCubit>(context);
          return Scaffold(

            body: cubit.views[cubit.currentIndex],
            bottomNavigationBar:  customBottomNavigationBar(cubit),
          );
        },
      ),
    );
  }

}
