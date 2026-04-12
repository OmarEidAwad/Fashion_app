import 'package:fashion/core/routing/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class customBuyButton extends StatelessWidget {
  const customBuyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: GestureDetector(
        onTap: () {
          context.pushNamed(AppRoute.paymentScreen);
        },
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.black,
          ),
          child: Center(
            child: Text(
              "Buy",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
