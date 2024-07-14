class GridItemModel{
  final String image;
  final String title;
  final String supTitle;
  final dynamic price;
  final double rate;
  final dynamic discount;
  final dynamic shipping;

 const GridItemModel({required this.image, required this.title, required this.supTitle, required this.price, required this.rate,  this.discount=0,  this.shipping=0});


  dynamic get finalPrice => (price - discount + shipping);


}