import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../core/widgets/appbar_widget.dart';
import '../../../home_view/presentation/views/skeleton_home/home_skeleton.dart';
import 'widgets/my_account_view_body.dart';

class MyAccountView extends StatelessWidget {
  const MyAccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        color: Colors.white,
        icon: FontAwesomeIcons.gear,
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeSkeleton()));
        }
      ),
      backgroundColor: Colors.grey[300],
      body: const SafeArea(
        child: MyAccountViewBody(),
      ),
    );
  }
}








