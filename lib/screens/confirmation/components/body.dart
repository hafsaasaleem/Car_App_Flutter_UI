// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:car_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:car_app/screens/detail/components/car_book_button.dart';
import '../../../model/product.dart';
import 'car_confirm_container.dart';
import 'header_title.dart';

class ConfirmationBodyScreen extends StatelessWidget {
  final Product product;

  const ConfirmationBodyScreen({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: kdefaultPadding,
        vertical: kdefaultPadding,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const HeaderTitle(),
          const SizedBox(height: 24),
          CarConfirmContainer(product: product),
          const SizedBox(height: 30),
          const CarBookButton(text: "Confirm and pay"),
        ],
      ),
    );
  }
}
