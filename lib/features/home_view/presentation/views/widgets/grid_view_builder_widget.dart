import 'package:flutter/material.dart';
import '../../../data/grid_item_model.dart';
import 'card_view_widget.dart';



class GridViewBuilder extends StatelessWidget {
  final List<GridItemModel> images=const [
    GridItemModel(
      shipping: 35,
        discount: 30,
        image: 'assets/images/book1.png',
      title: 'Dinoshapes Book',
      supTitle: 'Dinoshapes" is an educational children\'s book that combines two appealing topics: dinosaurs and geometric shapes. It is ideal for young children who are learning to identify basic shapes',
      rate:1.5 ,
      price: 60,

    ),
    GridItemModel(
      shipping: 35,
      discount: 10,
      image: 'assets/images/book2.png',
      title: 'Together Colors',
      supTitle: 'Color Together" is a children\'s book designed to foster creativity and family bonding through coloring activities. It typically features a variety of illustrations that children and parents can color together, promoting collaborative play and artistic expression',
      rate:1 ,
      price: 200,
    ),
    GridItemModel(
      shipping: 35,
      discount: 0,

      image: 'assets/images/book3.png',
      title: 'Kinetic Sand',
      supTitle: 'Kinetic sand is a type of moldable sand toy that sticks to itself and not to hands, making it easier to shape and mold. It is designed to mimic the properties of wet sand while remaining dry and easy to clean up. Kinetic sand is often used for sensory play and creative building activities, providing a tactile and engaging experience for children and adults alike. It can be shaped, cut, and molded into various forms, offering a fun and educational play experience',
      rate:3.5 ,
      price: 150,
    ),
    GridItemModel(
      shipping: 35,
      discount: 50,
      image: 'assets/images/bag.png',
      title: 'School Bag',
      supTitle:'A school bag is currently available for sale. This school bag is designed to cater to the needs of students, offering functionality, style, and durability. It features multiple compartments and pockets to organize school supplies such as books, notebooks, stationery, and a water bottle. The bag is made of high-quality materials like durable polyester or nylon, ensuring longevity and easy maintenance. Additionally, it may have padded shoulder straps for comfort, adjustable straps for a customized fit, and reflective strips for safety. Ideal for students of all ages, this school bag combines practicality with style, making it a versatile and essential accessory for school or everyday use.' ,
      rate:4.5 ,
      price:550,
    ),
  ];

  const GridViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right:10,left:10,),
      child: GridView.builder(
        itemCount: images.length,
        physics:const BouncingScrollPhysics(),
        gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 5,
          mainAxisSpacing: 10,
          mainAxisExtent: 200,
        ),
        itemBuilder: (context,index)=> CartWidget(gridItemModel: images[index],),
      ),
    );
  }
}