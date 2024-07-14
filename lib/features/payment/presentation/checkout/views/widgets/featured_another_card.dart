import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/units/routing/app_routes.dart';
import '../../../../../../core/units/styles.dart';
import 'app_button_index_change.dart';

class FeaturedAnotherCard extends StatelessWidget {
  const FeaturedAnotherCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        context.push(AppRoute.detailsView);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: ShapeDecoration(
            color: Colors.grey[300],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            )
        ),
        child: Row(
          children: [

            Image.asset('assets/images/bag.png',width: 60,),
            const Spacer(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 100,
                  child: Text(
                    'Bag blue' ,
                    maxLines: 1,
                    overflow: TextOverflow.visible,
                    style: Styles.textStyle18w600.copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 5,),
                SizedBox(
                  width: 100,
                  child: Text(
                    '155 LE' ,
                    maxLines: 1,
                    overflow: TextOverflow.visible,
                    style: Styles.textStyle18w600.copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            const Spacer(),
            const AppButtonIndexChange()
          ],
        ),
      ),
    );
  }
}