import 'package:flutter/material.dart';

import '../../../../../core/units/styles.dart';
import '../../../../../core/widgets/price_and_favorite_icon.dart';

class FavoriteFeaturedItems extends StatelessWidget {
  const FavoriteFeaturedItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Bag blue',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: Styles.textStyle20
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            // const CustomAddCardIcon(
            //   backgroundColor: AppColors.ofWhiteColor,
            // ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
            'Bag blueBag blueBag blueBag blueBag blueBag blueBag blue dgdfg',
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: Styles.textStyle16.copyWith(color: Colors.grey)),
        const SizedBox(
          height: 10,
        ),
        const PriceAndFavoriteIcon(),

      ],
    );
  }
}