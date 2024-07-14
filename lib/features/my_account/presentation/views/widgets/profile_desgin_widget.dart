
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/units/routing/app_routes.dart';
import '../../../../../core/units/styles.dart';
import '../../../../../core/widgets/image_design_container.dart';

class ProfileDesignWidget extends StatelessWidget {
  const ProfileDesignWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        context.push(AppRoute.settingProfile);
      },
      child: Container(
          padding: const EdgeInsets.all(20),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(32),
              bottomRight: Radius.circular(32),
            ),
          ),
          child: const Row(
            children: [
              ImageDesignContainer(),
              SizedBox(
                width: 10,
              ),
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      r'#' '158789',
                      style: TextStyle(fontSize: 10),
                    ),
                    Text('moyaser hussein', style: Styles.textStyle16),
                  ]),
            ],
          ),
        ),
    );
  }
}

