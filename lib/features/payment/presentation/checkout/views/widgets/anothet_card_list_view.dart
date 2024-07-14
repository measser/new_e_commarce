import 'package:flutter/material.dart';

import 'featured_another_card.dart';

class AnotherCardListView extends StatelessWidget {
  const AnotherCardListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        physics:const BouncingScrollPhysics(),

        itemBuilder: (context,index)=>const Padding(
          padding: EdgeInsets.symmetric(vertical: 5),
          child: FeaturedAnotherCard(),
        ));
  }
}
