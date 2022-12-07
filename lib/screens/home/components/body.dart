import 'package:car_app/constants.dart';
import 'package:car_app/screens/home/components/categorytile.dart';
import 'package:car_app/screens/home/components/product_card.dart';
import 'package:car_app/screens/home/components/searchicon_with_text_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.only(
          left: kdefaultPadding,
          top: kdefaultPadding,
          right: kdefaultPadding,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SearchIcon_With_Text_Container(
              icon: SvgPicture.asset(
                "assets/icons/search.svg",
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 16),
            const CategoryTile(),
            const SizedBox(height: 16),
            const Text("Cars near you",
                style: TextStyle(
                  fontFamily: "Source Sans Pro ",
                  fontSize: 26,
                  fontWeight: FontWeight.w700,
                )),
            const SizedBox(height: 16),
            const ProductCard(),
          ],
        ),
      ),
    );
  }
}
