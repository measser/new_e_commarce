import 'package:comamarce/features/payment/data/payment_intent_input_model.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/errors/feilure.dart';

abstract class CheckoutRepo{
  Future<Either<Failure,void >> makePayment({
    required PaymentIntentInputModel paymentIntentInputModel
});
}