import 'package:flutter/material.dart';

import '../../../data/grid_item_model.dart';
import 'custom_details_background.dart';
import 'details_image_widget.dart';

class DetailsHeaderWidget extends StatelessWidget {
  const DetailsHeaderWidget({
    super.key,
    required this.gridItemModel,
  });

  final GridItemModel gridItemModel;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        const CustomDetailsBackground(),
        DetailsImageWidget(gridItemModel: gridItemModel),
      ],

    );
  }
}