import 'package:bloc/bloc.dart';
import 'package:comamarce/features/payment/data/payment_intent_input_model.dart';
import 'package:comamarce/features/payment/data/repos/checkout_repo.dart';
import 'package:meta/meta.dart';

part 'payment_state.dart';

class PaymentCubit extends Cubit<PaymentState> {
  PaymentCubit(this.checkoutRepo) : super(PaymentInitial());

  bool isLoading =false;
  final CheckoutRepo checkoutRepo;

  Future makePayment({required PaymentIntentInputModel paymentIntentInputModel}) async{
    isLoading =true;
    emit(PaymentLoading());
    var data = await checkoutRepo.makePayment(paymentIntentInputModel: paymentIntentInputModel);
    data.fold((l){
      isLoading =false;
      emit(PaymentError(errMessage: l.errMassage));
    },
            (r){
              isLoading =false;
      emit(PaymentSuccess());
            });
  }
}
