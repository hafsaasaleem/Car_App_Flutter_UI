import 'package:flutter/material.dart';
import '../../../model/product.dart';
import '../../detail/components/black_review_container.dart';
import 'car_book_through_credit_card_container.dart';

class CarConfirmContainer extends StatelessWidget {
  const CarConfirmContainer({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 360,
      width: double.infinity,
      child: Column(
        children: [
          Container(
            height: 120,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(1.0),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
            ),
            child: Stack(
              children: [
                Container(
                  height: 75,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 177, 209, 224),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16),
                    ),
                  ),
                ),
                Positioned(
                  top: 42,
                  left: 138,
                  child: Container(
                    height: 65,
                    width: 65,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 2),
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        "assets/images/image.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 26,
                  left: 270,
                  child: BlackReviewContainer(product: product),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(1.0),
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(16),
                  bottomRight: Radius.circular(16),
                ),
              ),
              child: Column(
                children: [
                  Text(
                    product.carmodelname,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        size: 28,
                        color: Colors.grey.shade600,
                      ),
                      const Text(
                        "Airport in Nuremberg, Germany",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                            text: "\$940",
                            style: TextStyle(
                              letterSpacing: 1,
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w900,
                            )),
                        TextSpan(
                            text: "/week",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 20,
                            )),
                      ],
                    ),
                  ),
                  const SizedBox(height: 18),
                  const CarBookThroughCreditCardContainer(),
                  const SizedBox(height: 18),
                  const Text(
                    "28 Oct 2022 - 4 Nov 2022",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
