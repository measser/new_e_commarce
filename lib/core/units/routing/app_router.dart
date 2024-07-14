
import 'package:comamarce/features/authentication/data/models/login_model/Login_model.dart';
import 'package:comamarce/features/authentication/presentation/view/manager_login_view.dart';
import 'package:comamarce/features/home_view/data/grid_item_model.dart';
import 'package:comamarce/features/payment/presentation/checkout/views/anther_card_view.dart';
import 'package:comamarce/features/splash/presentation/view/splash_view.dart';
import 'package:go_router/go_router.dart';
import '../../../features/authentication/presentation/view/change_password_view.dart';
import '../../../features/authentication/presentation/view/forget_password_view.dart';
import '../../../features/authentication/presentation/view/login_view.dart';
import '../../../features/authentication/presentation/view/register_view.dart';
import '../../../features/authentication/presentation/view/otp_view.dart';
import '../../../features/favorite_view/presentation/views/favorite_view.dart';
import '../../../features/home_view/presentation/views/details_view.dart';
import '../../../features/home_view/presentation/views/home_buttom_nav_bar.dart';
import '../../../features/my_account/presentation/views/my_account_view.dart';
import '../../../features/order_view/presentation/views/order_view.dart';
import '../../../features/payment/presentation/checkout/views/my_cart_view.dart';
import '../../../features/payment/presentation/checkout/views/payment_details_view.dart';
import '../../../features/payment/presentation/checkout/views/thank_you_view.dart';
import '../../../features/setting_profile_view/presentation/view/setting_profile_view.dart';
import 'app_routes.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    routes:[
      GoRoute(
        path: AppRoute.splash,
        builder: (context,state)=>const SplashView()
      ),
      GoRoute(
        path: AppRoute.login,
        builder: (context,state)=>const LoginView()
      ),
      GoRoute(
        path: AppRoute.managerLogin,
        builder: (context,state)=>const ManagerLoginView()
      ),
      GoRoute(
          path: AppRoute.register,
          builder: (context,state)=>const RegisterView()
      ),
      GoRoute(
          path: AppRoute.forgetPassword,
          builder: (context,state)=>const ForgetPasswordView()
      ),
      GoRoute(
          path: AppRoute.resetPassword,
          builder: (context,state)=> OtpView(email: state.extra as String,),
      ),
      GoRoute(
          path: AppRoute.changePassword,
          builder: (context,state)=>const ChangePasswordView()
      ),
      GoRoute(
          path: AppRoute.home,
          builder: (context,state)=>const HomeButtonNavBar()
      ),
      GoRoute(
          path: AppRoute.detailsView,
          builder: (context,state)=>   DetailsView(gridItemModel:state.extra as GridItemModel ,)
      ),
      GoRoute(
          path: AppRoute.order,
          builder: (context,state)=>const OrderView()
      ),
      GoRoute(
          path: AppRoute.myAccount,
          builder: (context,state)=>const MyAccountView()
      ),
      GoRoute(
          path: AppRoute.settingProfile,
          builder: (context,state)=>const SettingProfileView()
      ),
      GoRoute(
          path: AppRoute.favorite,
          builder: (context,state)=>const FavoriteView()
      ),
      GoRoute(
          path: AppRoute.myCart,
          builder: (context,state)=> MyCartView(items: state.extra as GridItemModel,)
      ),
      GoRoute(
          path: AppRoute.anotherMyCart,
          builder: (context,state)=> AntherCardView(items: state.extra as GridItemModel)
      ),
      GoRoute(
          path: AppRoute.paymentDetails,
          builder: (context,state)=>const PaymentDetailsView()
      ),
      GoRoute(
          path: AppRoute.thankYou,
          builder: (context,state)=>const ThankYouView()
      ),
    ],
  );


}
