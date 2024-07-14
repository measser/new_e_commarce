
import 'package:flutter/material.dart';

import '../../../../../core/units/styles.dart';
import 'text_body_widget.dart';



class OrderListView extends StatelessWidget {
  const OrderListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                padding: const EdgeInsets.only(left: 10, right: 20, top: 15),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 10,
                      color: Colors.grey.withOpacity(.4),
                      offset: const Offset(10, 10),
                      spreadRadius: 5,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                ),
                child: const TextBodyWidget(),
              ),
            ],
          );
        });
  }
}


class ModalButtonSheetComponant extends StatelessWidget {
  const ModalButtonSheetComponant({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:const EdgeInsets.only(bottom: 10),
      padding:const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
       borderRadius: BorderRadius.circular(8),
       border: Border.all(width: .2),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top:4),
            child:Container(
              width: 60,
              height: 70,
              decoration:  BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: const DecorationImage(
                  image: AssetImage('assets/images/ecommerce.png'),
                  fit: BoxFit.cover,
                )
              ),
            ),
          ),
          const SizedBox(width: 10,),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                r'#' '165684',
              ),
              SizedBox(height: 5,),
              Text(
                'Wok and Walk',style: Styles.textStyle16,
              ),
              SizedBox(height: 5,),
              Text(
                'combp box/ Platter' ,
              ),
              SizedBox(height: 5,),
              Row(
                children: [
                  Text(
                    'Payment :',
                  ),
                  SizedBox(width: 80,),
                  Text(r'150' ' ' 'EGP'),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
