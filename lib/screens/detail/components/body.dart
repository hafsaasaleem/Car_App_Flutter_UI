// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:car_app/constants.dart';
import 'package:car_app/screens/confirmation/confirmation_screen.dart';
import 'package:car_app/screens/detail/components/price_container.dart';
import 'package:flutter/material.dart';
import 'package:car_app/screens/home/components/searchicon_with_text_container.dart';
import '../../../model/product.dart';
import 'black_review_container.dart';
import 'car_book_button.dart';
import 'car_features.dart';
import 'header_car_image.dart';
import 'location_icon_container.dart';
import 'locationicon_with_text_container.dart';

class DetailBodyScreen extends StatelessWidget {
  final Product product;

  const DetailBodyScreen({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderCarImage(product: product),
          SizedBox(
            height: size.height / 2,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: kdefaultPadding,
                vertical: kdefaultPadding,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            product.carmodelname,
                            style: const TextStyle(
                              fontSize: 26,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          const SizedBox(width: 5),
                          const Icon(Icons.info_outline, size: 30),
                        ],
                      ),
                      BlackReviewContainer(product: product),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            "assets/images/image.jpg",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Elizaveta P.",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          SizedBox(height: 3),
                          Text(
                            "5 Years experience",
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  const LocationIcon_With_Text_Container(
                      icon: LocationIconContainer()),
                  const SizedBox(height: 12),
                  const Text(
                    "Features",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  const SizedBox(height: 12),
                  const CarFeatures(),
                  const SizedBox(height: 12),
                  const Text(
                    "Price from",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  const SizedBox(height: 12),
                  const PriceContainer(),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ConfirmationScreen(product: product),
              ),
            ),
            child: const CarBookButton(text: "Book now"),
          ),
        ],
      ),
    );
  }
}
