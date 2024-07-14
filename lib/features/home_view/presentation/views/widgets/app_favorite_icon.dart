import 'package:flutter/material.dart';

class AppFavoriteIcon extends StatefulWidget {
  const AppFavoriteIcon({
    super.key,
    this.backgroundColor= Colors.white,
    this.size=20,
  });

  final Color? backgroundColor;
  final double? size;
  @override
  State<AppFavoriteIcon> createState() => _AppFavoriteIconState();
}

class _AppFavoriteIconState extends State<AppFavoriteIcon> {
  bool isActive=false;

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: (){
        isActive=!isActive;
        setState(() {

        });
      },
      child:  CircleAvatar(
        radius: 15,
        backgroundColor:widget.backgroundColor ,
        child:isActive? const Icon(
              Icons.favorite,
              color: Colors.red,
              size: 20,
            ) :  Icon(
          Icons.favorite_border,
          color: Colors.red,
          size: widget.size,
        ),
      ),
    );
  }
}