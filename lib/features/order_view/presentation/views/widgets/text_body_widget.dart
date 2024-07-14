import 'package:flutter/material.dart';

import '../../../../../core/units/app_colors.dart';
import '../../../../../core/units/styles.dart';
import 'button_down_widget.dart';

class TextBodyWidget extends StatelessWidget {
  const TextBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Order Num :',
                  style: Styles.textStyle14,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'payment :',
                  style: Styles.textStyle14,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Status :',
                  style: Styles.textStyle14,
                )
              ],
            ),
            Column(
              children: [
                Text(
                  '165684',
                  style: Styles.textStyle14
                      .copyWith(color: AppColors.grayColor[400]),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text('fawry',
                    style: Styles.textStyle14.copyWith(
                      color: AppColors.grayColor[400],
                    )),
                const SizedBox(
                  height: 5,
                ),
                Text('564654',
                    style: Styles.textStyle14.copyWith(
                      color: AppColors.grayColor[400],
                    )),
              ],
            ),
            const Spacer(),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Date :',
                  style: Styles.textStyle14,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Purchases :',
                  style: Styles.textStyle14,
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  '2023-02-15',
                  style: Styles.textStyle14
                      .copyWith(color: AppColors.grayColor[400]),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text('1',
                    style: Styles.textStyle14.copyWith(
                      color: AppColors.grayColor[400],
                    )),
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          height: 1,
          width: double.infinity,
          color: AppColors.grayColor[500],
        ),
        const ButtonDownWidget(),
      ],
    );
  }
}