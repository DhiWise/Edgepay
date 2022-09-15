import 'package:get/get.dart';

class PaymentLinksDetailsModel {
  Rx<String> priceTxt = Rx('price');

  Rx<String> createdTxt = Rx('created');

  Rx<String> weburlTxt = Rx('payment url');

  Rx<String> emailTxt = Rx('email');

  Rx<String> inputLabelMFiveTxt = Rx('lbl');
}
