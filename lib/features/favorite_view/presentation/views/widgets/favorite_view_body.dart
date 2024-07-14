import 'package:flutter/material.dart';

import 'favourite_list_view.dart';

class FavoriteViewBody extends StatelessWidget {
  const FavoriteViewBody({super.key,});

  @override
  Widget build(BuildContext context) {
    return  const Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            FavoriteListView(),
          ],
        ),
      ),
    );
  }
}