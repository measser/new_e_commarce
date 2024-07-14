import 'package:flutter/material.dart';

import '../../../data/grid_item_model.dart';
import 'details_items.dart';

class DetailsFeatured extends StatelessWidget {
  const DetailsFeatured({
    super.key,
    required this.gridItemModel,
  });

  final GridItemModel gridItemModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: 100,
              height: 5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.black12,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        DetailsItems(gridItemModel: gridItemModel,),
      ],
    );
  }
}