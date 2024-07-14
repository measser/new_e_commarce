import 'package:comamarce/features/payment/presentation/checkout/views/widgets/thank_you_card.dart';
import 'package:flutter/material.dart';

import 'custom_check_icon.dart';
import 'custom_dashed_line.dart';

class ThankYouBody extends StatelessWidget {
  const ThankYouBody({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Stack(
            clipBehavior: Clip.none,
            children:[
              const ThankYouCard(),
              Positioned(
                left: 26,
                right: 26,
                bottom: MediaQuery.sizeOf(context).height*.12 +20,
                child:const CustomDashedLine(),
              ),
              Positioned(
                  bottom: MediaQuery.sizeOf(context).height*.12,
                  left: -20,
                  child:const CircleAvatar(
                    backgroundColor: Colors.white,
                  ) ),
              Positioned(
                  bottom: MediaQuery.sizeOf(context).height*.12,
                  right: -20,
                  child:const CircleAvatar(
                    backgroundColor: Colors.white,
                  ) ),
              const Positioned(
                right: 0,
                left: 0,
                top: -50,
                child: CustomCheckIcon(),
              ),
            ]
        ),
      ),
    );
  }
}