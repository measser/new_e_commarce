import 'package:comamarce/features/payment/presentation/checkout/views/widgets/payment_method_item.dart';
import 'package:flutter/material.dart';

class PaymentMethodsListView extends StatefulWidget {
  const PaymentMethodsListView({super.key});

  @override
  State<PaymentMethodsListView> createState() => _PaymentMethodsListViewState();
}

class _PaymentMethodsListViewState extends State<PaymentMethodsListView> {
  final List<String> paymentImage = const [
    'assets/images/visa.svg',
    'assets/images/paypal.svg',
  ];
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: paymentImage.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: GestureDetector(
                onTap: () {
                  activeIndex = index;
                  setState(() {});
                },
                child: PaymentMethodItem(
                  image: paymentImage[index],
                  isActive: activeIndex == index,
                ),
              ),
            );
          }),
    );
  }
}