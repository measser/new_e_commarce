import 'package:comamarce/features/payment/presentation/checkout/views/widgets/show_item_card.dart';
import 'package:flutter/material.dart';

class AddItemsInCard extends StatefulWidget {
  const AddItemsInCard({super.key,});

  @override
  State<AddItemsInCard> createState() => _AddItemsInCardState();
}

class _AddItemsInCardState extends State<AddItemsInCard> {
  Offset position = const Offset(100, 100);

  bool isDragging = false;


  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.sizeOf(context).aspectRatio*800,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.contain,
          image: AssetImage(
            'assets/images/basket.png',
          ),
        ),
      ),
      child:Stack(
      children: [
        Positioned(
          left: position.dx,
          top: position.dy,
          child: GestureDetector(
            onPanStart: (details) {
              setState(() {
                isDragging = true;
              });
            },
            onPanUpdate: (details) {
              setState(() {
                position = Offset(
                    (position.dx + details.delta.dx)
                        .clamp(MediaQuery.sizeOf(context).width*.12, MediaQuery.sizeOf(context).width-140),
                    (position.dy + details.delta.dy)
                        .clamp(10.0, MediaQuery.sizeOf(context).aspectRatio*600));
              });
            },
            onPanEnd: (details) {
              setState(() {
                isDragging = false;
              });
            },
            child:const ShowItemCard() ,
          ),
        ),
      ],
    ),);
  }
}

