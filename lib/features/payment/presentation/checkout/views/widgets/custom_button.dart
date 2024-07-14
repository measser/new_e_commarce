import 'package:comamarce/features/payment/data/repos/checkout_repo_impl.dart';
import 'package:comamarce/features/payment/presentation/checkout/views/widgets/payment_method_bottom_sheet.dart';
import 'package:comamarce/features/payment/presentation/manager/payment_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../../core/units/app_colors.dart';
import '../../../../../../core/units/styles.dart';
import '../../../../../../core/widgets/text_button.dart';
import '../../../../../home_view/data/grid_item_model.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.color = AppColors.greenColor, required this.items});

  final Color? color;
  final GridItemModel items;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: AppTextButton(
            styles: Styles.textStyle22,
            radius: 15,
            height: 60,
            onPressed: () {
              //context.push(AppRoute.paymentDetails);
              showModalBottomSheet(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  context: context, builder: (context) {
                return BlocProvider(
                  create: (context) => PaymentCubit(CheckoutRepoImpl()),
                  child:  PaymentMethodBottomSheet(items: items,),
                );
              });
            },
            text: 'Complete Payment',
            backgroundColor: color,
            textColor: Colors.black,
          ),
        ),
      ],
    );
  }
}

