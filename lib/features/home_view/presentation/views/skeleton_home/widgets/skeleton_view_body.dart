
import 'package:flutter/material.dart';
import 'package:flutter_skeleton_ui/flutter_skeleton_ui.dart';

import '../../widgets/home_view_body_widget.dart';
import 'featured_skeleton.dart';

class SkeletonViewBody extends StatelessWidget {
  const SkeletonViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Skeleton(
      isLoading: true,
      skeleton:SkeletonListView(),
      child:HomeViewBody() ,
    );
  }
}


class SkeletonListView extends StatelessWidget {
  const SkeletonListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 2,
        physics:const NeverScrollableScrollPhysics(),
        itemBuilder: (context,index)=>const Padding(
          padding: EdgeInsets.symmetric(horizontal:10,vertical: 5),
          child: Row(
            children: [
              FeaturedSkeleton(),
              SizedBox(width: 10,),
              FeaturedSkeleton(),
            ],
          ),
        ));
  }
}