import 'package:flutter/material.dart';

import '../../../../../../core/units/app_colors.dart';
import '../../../../../../core/widgets/text_button.dart';
import 'app_button_index_change.dart';

class IndexOfCategoryCardItems extends StatelessWidget {
  const IndexOfCategoryCardItems({super.key});



  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const AppButtonIndexChange(),
          const SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Expanded(
                child: AppTextButton(
                  onPressed: () {},
                  text: 'Submit',
                  backgroundColor: AppColors.primaryBlueColor,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}