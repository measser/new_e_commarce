import 'package:flutter/material.dart';

import '../../../data/grid_item_model.dart';

class DetailsImageWidget extends StatelessWidget {
  const DetailsImageWidget({
    super.key,
    required this.gridItemModel,
  });

  final GridItemModel gridItemModel;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3/2,
      child: Image.asset(
        gridItemModel.image ??'',
        fit: BoxFit.contain,
        filterQuality: FilterQuality.high,
      ),
    );
  }
}