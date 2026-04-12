import 'package:fashion/core/helpers/spacing.dart';
import 'package:fashion/feature/payment/ui/widgets/payment_screen_body.dart';
import 'package:flutter/material.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          scrolledUnderElevation: 0,
          automaticallyImplyLeading: true,
          backgroundColor: Colors.white,
          title: Text(
            'Payment',
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          centerTitle: true,
          actions: [Icon(Icons.receipt_long), horizontalSpace(16)],
        ),
        body: PaymentScreenBody(),
      ),
    );
  }
}
