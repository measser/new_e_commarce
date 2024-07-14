import 'package:comamarce/features/home_view/presentation/views/widgets/rating_details_body.dart';
import 'package:flutter/material.dart';

import '../../../../../core/units/styles.dart';
import '../../../data/grid_item_model.dart';

class DetailsItems extends StatelessWidget {
  const DetailsItems({super.key, required this.gridItemModel});
  final GridItemModel gridItemModel;
  @override
  Widget build(BuildContext context) {
    return Column(

      children: [
        Row(
          children: [
            Text(
              '${gridItemModel.price}',
              style: Styles.textStyle20
                  .copyWith(fontWeight: FontWeight.bold, color: Colors.red),
            ),
            const Spacer(),
            Text(
              '120 Views',
              style: Styles.textStyle16.copyWith(color: Colors.grey),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
            gridItemModel.title,
            style: Styles.textStyle25
                .copyWith(fontWeight: FontWeight.w900,)

        ),
        const SizedBox(
          height: 10,
        ),
        RatingDetailsBody(gridItemModel:gridItemModel ,),
        const SizedBox(
          height: 30,
        ),
        Text(
            gridItemModel.supTitle,
            style:
            Styles.textStyle16),
      ],
    );
  }
}