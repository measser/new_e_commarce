import 'package:comamarce/core/errors/feilure.dart';
import 'package:comamarce/core/units/shared/helper/stripe_service.dart';
import 'package:comamarce/features/payment/data/payment_intent_input_model.dart';
import 'package:comamarce/features/payment/data/repos/checkout_repo.dart';
import 'package:dartz/dartz.dart';

class CheckoutRepoImpl extends CheckoutRepo{
  final StripeService stripeService =StripeService();
  @override
  Future<Either<Failure, void>> makePayment({required PaymentIntentInputModel paymentIntentInputModel})async {

    try{
      await stripeService.makePayment(paymentIntentInputModel: paymentIntentInputModel);
      return const Right(null);
    }catch(e){
      return Left(ServerFailure(e.toString()));
    }

  }
  
}