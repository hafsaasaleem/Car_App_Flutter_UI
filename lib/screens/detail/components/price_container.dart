// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class PriceContainer extends StatefulWidget {
  const PriceContainer({
    Key? key,
  }) : super(key: key);

  @override
  State<PriceContainer> createState() => _PriceContainerState();
}

class _PriceContainerState extends State<PriceContainer> {
  List<String> price = ["\$145/d", "\$940/w", "\$380/m"];
  int selectedindex = 0;
  // bool isSelected = true;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (int i = 0; i < price.length; i++) ...[
            Padding(
              padding: const EdgeInsets.only(right: 6),
              child: buildCategory(i),
            ),
          ]
        ],
      ),
    );
  }

  Widget buildCategory(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedindex = index;
        });
      },
      child: Container(
        height: 35,
        width: 108,
        decoration: BoxDecoration(
          border: Border.all(
              color:
                  selectedindex == index ? Colors.green : Colors.grey.shade300,
              width: 1.8),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            price[index],
            style: TextStyle(
                color: selectedindex == index ? Colors.green : Colors.black,
                fontWeight: FontWeight.w900),
          ),
        ),
      ),
    );
  }
}
