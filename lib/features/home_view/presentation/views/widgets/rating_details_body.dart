import 'package:comamarce/core/widgets/animated_rating.dart';
import 'package:flutter/material.dart';

import '../../../../../core/units/styles.dart';
import '../../../data/grid_item_model.dart';

class RatingDetailsBody extends StatelessWidget {
  const RatingDetailsBody({super.key, required this.gridItemModel});

  final GridItemModel gridItemModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AnimatedRating(
          gridItemModel: gridItemModel,
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          '(${gridItemModel.rate})',
          style: Styles.textStyle14.copyWith(color: Colors.grey),
        ),
        const Spacer(),
        const CircleAvatar(
          radius: 3,
          backgroundColor: Colors.grey,
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          '10 Review',
          style: Styles.textStyle18w400.copyWith(color: Colors.grey),
        ),
      ],
    );
  }
}