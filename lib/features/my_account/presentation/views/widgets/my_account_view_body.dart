
import 'package:comamarce/features/my_account/presentation/views/widgets/profile_desgin_widget.dart';
import 'package:flutter/material.dart';
import 'featured_my_account_list_view.dart';

class MyAccountViewBody extends StatelessWidget {
  const MyAccountViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {

      },
      child: ListView(
        children: const [
          ProfileDesignWidget(),
          SizedBox(height: 10,),
          FeaturedMyAccountListView(),
        ],
      ),
    );
  }
}