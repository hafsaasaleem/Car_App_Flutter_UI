import 'package:flutter/material.dart';

class CarBookThroughCreditCardContainer extends StatelessWidget {
  const CarBookThroughCreditCardContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: Image.asset(
                  "assets/images/mastercard_logo.jpg",
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 5),
              const Text("**** **** ****  3090"),
            ],
          ),
          const Text(
            "Edit",
            style: TextStyle(
              color: Colors.green,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
