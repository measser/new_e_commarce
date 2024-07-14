import 'package:comamarce/features/payment/presentation/checkout/views/widgets/payment_methods_list_view.dart';
import 'package:flutter/material.dart';
import '../../../../../home_view/data/grid_item_model.dart';
import 'custom_button_bloc_consumer.dart';




class PaymentMethodBottomSheet extends StatelessWidget {
  const PaymentMethodBottomSheet({super.key, required this.items});
  final GridItemModel items;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            height: 16,
          ),
          const PaymentMethodsListView(),
          const SizedBox(
            height: 32,
          ),
         CustomButtonBlocConsumer(items:items ,),
        ],
      ),
    );
  }
}

