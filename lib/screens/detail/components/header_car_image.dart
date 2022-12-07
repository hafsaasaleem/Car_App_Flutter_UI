import 'package:flutter/material.dart';

import '../../../model/product.dart';
import 'dot_button.dart';

class HeaderCarImage extends StatelessWidget {
  const HeaderCarImage({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SizedBox(
      height: size.height / 3.5,
      child: Stack(
        children: [
          Container(
            height: size.height / 3.5,
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(32),
                bottomRight: Radius.circular(32),
              ),
            ),
          ),
          Hero(
            tag: "${product.id}",
            child: Image.asset(
              product.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 200,
            left: 160,
            child: SizedBox(
              height: 20,
              width: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  DotButton(dotcolor: Colors.white),
                  DotButton(dotcolor: Colors.green),
                  DotButton(dotcolor: Colors.white),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
