import 'package:comamarce/features/dash_board_view/featured/views/widgets/tablet_layout.dart';
import 'package:flutter/material.dart';

import 'custom_drawer.dart';
import 'custom_web_widget.dart';

class WebLayOut extends StatelessWidget {
  const WebLayOut({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        Expanded(
            flex: 3,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: TabletLayOut(
              ),
            )),
        Expanded(child: CustomWebWidget()),
      ],
    );
  }
}