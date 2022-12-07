// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../model/product.dart';
import 'components/body.dart';
import 'components/confirmation_screen_app_bar.dart';

class ConfirmationScreen extends StatelessWidget {
  final Product product;

  const ConfirmationScreen({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: confirmationScreenAppBar("Comfirmation", context),
      body:  ConfirmationBodyScreen(product: product),
    );
  }
}
