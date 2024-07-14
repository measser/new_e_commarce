
import 'package:bloc/bloc.dart';
import 'package:comamarce/features/home_view/data/grid_item_model.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:meta/meta.dart';
import '../../../../features/favorite_view/presentation/views/favorite_view.dart';
import '../../../../features/home_view/presentation/views/home_view.dart';
import '../../../../features/home_view/presentation/views/widgets/grid_view_builder_widget.dart';
import '../../../../features/my_account/presentation/views/my_account_view.dart';
import '../../../../features/order_view/presentation/views/order_view.dart';
import '../../../../features/payment/presentation/checkout/views/my_cart_view.dart';

part 'app_state_state.dart';

class AppCubit extends Cubit<AppStateState> {
  AppCubit() : super(AppStateInitial());
  int currentIndex=2;
  List<Widget> views =const [
    //MyCartView(),
    OrderView(),
    OrderView(),
    HomeView(),
    FavoriteView(),
    MyAccountView(),
  ];
  List<Widget> appBar =const[
    Text('Home Page1'),
    Text('Order Detials'),
    Text('Home Page'),
    Text('Favorite'),
    Text('My Account'),
  ];
  List<Widget> icons=[
    const Icon(null),
    const Icon(null),
    const Icon(Icons.shopping_cart_sharp),
    const Icon(null),
    const Icon(Icons.settings),
  ];
List <BottomNavigationBarItem> buttons=[
  const BottomNavigationBarItem(
    icon: Icon(FontAwesomeIcons.motorcycle),
    label: '',
  ),
  const BottomNavigationBarItem(
    icon: Icon(FontAwesomeIcons.box),
    label: '',
  ),
  BottomNavigationBarItem(
    icon: Container(
        width: 70,
        height: 55,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: Colors.black26
        ),
        child: const Icon(Icons.home)),
    label: '',
  ),
  const BottomNavigationBarItem(
    icon: Icon(FontAwesomeIcons.heart),
    label: '',
  ),
  const BottomNavigationBarItem(
    icon: Icon(FontAwesomeIcons.user
    ),
    label: '',
  ),
];

  void changeIndex(int index){
    currentIndex =index;
    emit(ChangeIndexButtonNavBar());
  }
  void changeScreen(int index){
    views[currentIndex=index];
    emit(ChangeIndexWidget());
  }
}
