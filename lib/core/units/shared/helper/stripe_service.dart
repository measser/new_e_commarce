import 'dart:async';
import 'package:comamarce/core/units/shared/helper/api_keys.dart';
import 'package:comamarce/core/units/shared/helper/api_service.dart';
import 'package:comamarce/features/payment/data/models/ephemral_key_model/Ephemral_key_model.dart';
import 'package:comamarce/features/payment/data/models/payment_intent_model/Payment_intent_model.dart';
import 'package:comamarce/features/payment/data/payment_intent_input_model.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import '../../../../features/payment/data/models/init_payment_sheet_input_model/init_payment_sheet_input_model.dart';

class StripeService {
  final ApiService apiService = ApiService();

  Future<PaymentIntentModel> createPaymentIntent(
      PaymentIntentInputModel paymentIntentInputModel) async {
    var responsive = await apiService.stripePost(
        url: 'https://api.stripe.com/v1/payment_intents',
        data: paymentIntentInputModel.toJson(),
        token: ApiKeys.secretKey);
    return PaymentIntentModel.fromJson(responsive.data);
  }

  Future<EphemeralKeyModel> createEphemeralKey(
      {required String customerId}) async {
    var responsive = await apiService.stripePost(
        url: 'https://api.stripe.com/v1/ephemeral_keys',
        data: {
          'customer': customerId,
        },
        token: ApiKeys.secretKey,
        headers: {
          'Authorization': "Bearer ${ApiKeys.secretKey}",
          'Stripe-Version': '2024-06-20',
        });
    return EphemeralKeyModel.fromJson(responsive.data);
  }

  Future initPaymentSheet({
    required InitPaymentSheetInputModel initPaymentSheetInputModel,
  }) async {
    await Stripe.instance.initPaymentSheet(
        paymentSheetParameters: SetupPaymentSheetParameters(
      paymentIntentClientSecret: initPaymentSheetInputModel.clientSecret,
      merchantDisplayName: 'measser',
      customerEphemeralKeySecret: initPaymentSheetInputModel.ephemeralKey,
      customerId: initPaymentSheetInputModel.customerId, //mot8er
    ));
  }

  Future displayPaymentSheet() async {
    await Stripe.instance.presentPaymentSheet();
  }

  Future makePayment(
      {required PaymentIntentInputModel paymentIntentInputModel}) async {
    var paymentIntentModel = await createPaymentIntent(paymentIntentInputModel);
    var ephemeralKeyModel = await createEphemeralKey(customerId: paymentIntentInputModel.customerId);
    var initPaymentSheetInputModel = InitPaymentSheetInputModel(
        clientSecret: paymentIntentModel.clientSecret!,
        customerId: paymentIntentInputModel.customerId,
        ephemeralKey: ephemeralKeyModel.secret!);
    await initPaymentSheet(
        initPaymentSheetInputModel: initPaymentSheetInputModel);
    await displayPaymentSheet();
  }
}
