import 'package:flutter/material.dart';

import '../../features/home_view/presentation/views/widgets/app_favorite_icon.dart';
import '../units/styles.dart';

class PriceAndFavoriteIcon extends StatelessWidget {
  const PriceAndFavoriteIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '155.5 LE',
            style: Styles.textStyle20.copyWith(color: Colors.red),
          ),
          const AppFavoriteIcon()
        ]);
  }
}