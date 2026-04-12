import 'package:fashion/core/helpers/spacing.dart';
import 'package:fashion/feature/payment/ui/widgets/order_success_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
class PaymentScreenBody extends StatefulWidget {
  const PaymentScreenBody({super.key});
  @override
  State<PaymentScreenBody> createState() => _PaymentScreenBodyState();
}

class _PaymentScreenBodyState extends State<PaymentScreenBody> {
  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = '';
  bool isShow = false;
  final _key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              verticalSpace(32),
              CreditCardWidget(
                padding: 6,
                cardNumber: cardNumber,
                expiryDate: expiryDate,
                cardHolderName: cardHolderName,
                cvvCode: cvvCode,
                showBackView: isShow,
                onCreditCardWidgetChange: (v) {},
                cardBgColor: const Color.fromARGB(255, 32, 33, 32),
                obscureCardCvv: false,
                obscureCardNumber: true,
                isHolderNameVisible: true,
              ),
              verticalSpace(16),
              CreditCardForm(
                formKey: _key,
                cardNumber: cardNumber,
                expiryDate: expiryDate,
                cardHolderName: cardHolderName,
                cvvCode: cvvCode,
                onCreditCardModelChange: onCreditCardModelChange,
                isCardHolderNameUpperCase: true,
                obscureCvv: false,
                inputConfiguration: InputConfiguration(
                  cardNumberDecoration: InputDecoration(
                    hintText: "Card Number",
                    counterStyle: TextStyle(color: Colors.black),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                  ),
                  cardHolderDecoration: InputDecoration(
                    hintText: "Card Name",
                    counterStyle: TextStyle(color: Colors.black),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                  ),
                  cvvCodeDecoration: InputDecoration(
                    hintText: "CVV",
                    counterStyle: TextStyle(color: Colors.black),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                  ),
                  expiryDateDecoration: InputDecoration(
                    hintText: "Expiry Date",
                    counterStyle: TextStyle(color: Colors.black),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                  ),
                ),
              ),
              verticalSpace(80),
              GestureDetector(
                onTap: () {
                  if (_key.currentState!.validate()) {
                    final data = {
                      'number': cardNumber,
                      'name': cardHolderName,
                      'date': expiryDate,
                      'cvv': cvvCode,
                    };
                    showDialog(
                      context: context,
                      builder: (_) => const OrderSuccessDialog(),
                    );
                  }
                },
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 32, 33, 32),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(
                    child: Text(
                      "Pay",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void onCreditCardModelChange(CreditCardModel data) {
    setState(() {
      cardNumber = data.cardNumber;
      cardHolderName = data.cardHolderName;
      cvvCode = data.cvvCode;
      expiryDate = data.expiryDate;
      isShow = data.isCvvFocused;
    });
  }
}
