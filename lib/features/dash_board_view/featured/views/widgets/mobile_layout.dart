import 'package:comamarce/features/dash_board_view/featured/views/widgets/custom_sliver_grid.dart';
import 'package:comamarce/features/dash_board_view/featured/views/widgets/custom_sliver_list_view.dart';
import 'package:flutter/material.dart';

class MobileLayOut extends StatelessWidget {
  const MobileLayOut({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(child: SizedBox(height: 16,),),
        CustomSliverGrid(),
        CustomSliverListView(),
      ],
    );
  }
}