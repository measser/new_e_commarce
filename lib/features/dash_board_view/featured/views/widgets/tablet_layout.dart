import 'package:comamarce/features/dash_board_view/featured/views/widgets/custom_item_1.dart';
import 'package:comamarce/features/dash_board_view/featured/views/widgets/custom_item_2.dart';
import 'package:comamarce/features/dash_board_view/featured/views/widgets/custom_list_view.dart';
import 'package:comamarce/features/dash_board_view/featured/views/widgets/custom_sliver_list_view.dart';
import 'package:flutter/material.dart';

class TabletLayOut extends StatelessWidget {
  const TabletLayOut({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(child: SizedBox(height: 16,),),
        SliverToBoxAdapter(child: CustomList()),
        CustomSliverListView(),
      ],
    );
  }
}

