import 'package:comamarce/features/home_view/presentation/views/skeleton_home/widgets/skeleton_view_body.dart';
import 'package:comamarce/features/home_view/presentation/views/widgets/home_view_body_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_skeleton_ui/flutter_skeleton_ui.dart';

class HomeSkeleton extends StatelessWidget {
  const HomeSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:const SkeletonViewBody() ,
    );
  }
}




