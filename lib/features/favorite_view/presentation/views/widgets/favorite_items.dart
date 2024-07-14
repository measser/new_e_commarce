import 'package:flutter/material.dart';
import '../../../../../core/widgets/design_auth_container.dart';
import '../../../../../core/widgets/image_design_container.dart';
import 'favorite_featured_item.dart';

class FavoriteItems extends StatelessWidget {
  const FavoriteItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DesignAuthContainer(
      widget: Padding(
        padding: const EdgeInsets.all(10),
        child: IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  ImageDesignContainer(
                    radius: 12,
                    width: MediaQuery.sizeOf(context).width * .4,
                    height: MediaQuery.sizeOf(context).height * .15,
                  ),
                   //AnimatedRating(size: 10,),
                ],
              ),
              const Expanded(
                child: FavoriteFeaturedItems(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}




