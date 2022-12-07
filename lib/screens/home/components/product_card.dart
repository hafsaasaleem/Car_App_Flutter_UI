import 'package:car_app/screens/home/components/reuseablecard.dart';
import 'package:flutter/material.dart';

import '../../../model/product.dart';
import '../../detail/detail_screen.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 15,
            mainAxisSpacing: 15,
            childAspectRatio: 0.85),
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ReuseableCard(
            product: products[index],
            ontap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailScreen(
                  product: products[index],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
