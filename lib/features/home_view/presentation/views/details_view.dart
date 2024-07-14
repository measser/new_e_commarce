
import 'package:comamarce/features/home_view/data/grid_item_model.dart';
import 'package:comamarce/features/home_view/presentation/views/widgets/app_favorite_icon.dart';
import 'package:comamarce/features/home_view/presentation/views/widgets/details_view_body.dart';
import 'package:flutter/material.dart';
import '../../../../core/widgets/appbar_widget.dart';



class DetailsView extends StatelessWidget {
  const DetailsView({
    super.key,
    required this.gridItemModel,
  });

  final GridItemModel gridItemModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        text: 'Details',
        child: const Padding(
          padding: EdgeInsets.only(right: 15),
          child: AppFavoriteIcon(
            backgroundColor: Colors.transparent,
            size: 30,
          ),
        ),
      ),
      body: DetailsViewBody(gridItemModel: gridItemModel),
    );
  }
}


















