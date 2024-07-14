
import 'package:comamarce/features/payment/presentation/checkout/views/widgets/payment_methods_list_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/units/app_colors.dart';
import '../../../../../../core/units/routing/app_routes.dart';
import '../../../../../../core/widgets/text_button.dart';
import 'custom_credit_card.dart';

class PaymentDetailsBody extends StatefulWidget {
  const PaymentDetailsBody({super.key});

  @override
  State<PaymentDetailsBody> createState() => _PaymentDetailsBodyState();
}

class _PaymentDetailsBodyState extends State<PaymentDetailsBody> {
  final formKey =GlobalKey<FormState>();
  AutovalidateMode autovalidateMode=AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(child: PaymentMethodsListView()),
            SliverToBoxAdapter(child:   CustomCreditCard(
              autovalidateMode: autovalidateMode,
              formKey:formKey ,
            )),
            SliverFillRemaining(
              hasScrollBody: false,
              child:Padding(
                padding: const EdgeInsets.only(bottom: 12,top: 35,left: 10,right: 10),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    children: [
                      Expanded(
                        child: AppTextButton(onPressed: (){
                          if(formKey.currentState!.validate()){
                            formKey.currentState!.save();
                          }else{
                            context.push(AppRoute.thankYou);
                            autovalidateMode=AutovalidateMode.always;
                            setState(() {

                            });
                          }
                        }, text: 'Pay',backgroundColor: AppColors.greenColor,height: 60,textColor: Colors.black,),
                      ),
                    ],
                  ),
                ),
              ),),
          ]
      ),
    );
  }
}