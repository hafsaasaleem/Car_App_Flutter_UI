// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:car_app/screens/detail/components/body.dart';
import 'package:flutter/material.dart';
import '../../model/product.dart';
import 'components/detail_screen_app_bar.dart';

class DetailScreen extends StatelessWidget {
  final Product product;

  const DetailScreen({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: DetailBodyScreen(product: product),
    );
  }
}
