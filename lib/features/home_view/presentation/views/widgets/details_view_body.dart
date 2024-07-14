import 'package:flutter/material.dart';

import '../../../data/grid_item_model.dart';
import 'custom_draggable_scrollabe_sheet.dart';
import 'details_header_widget.dart';

class DetailsViewBody extends StatelessWidget {
  const DetailsViewBody({
    super.key,
    required this.gridItemModel,
  });

  final GridItemModel gridItemModel;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Transform.translate(
          offset: const Offset(0, -56),
          child: DetailsHeaderWidget(gridItemModel: gridItemModel),
        ),
        CustomDraggableScrollableSheet(gridItemModel: gridItemModel),
      ],
    );
  }
}