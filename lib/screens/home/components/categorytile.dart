import 'package:flutter/material.dart';

class CategoryTile extends StatefulWidget {
  const CategoryTile({super.key});

  @override
  State<CategoryTile> createState() => _CategoryTileState();
}

class _CategoryTileState extends State<CategoryTile> {
  List<String> categories = ["Family", "Comfort", "Business", "Minibike"];
  int selectedindex = 0;
  bool isSelected = true;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (int i = 0; i < categories.length; i++) ...[
            Padding(
              padding: const EdgeInsets.only(right: 8),
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
        height: 32,
        width: 86,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50.0),
          color: selectedindex == index ? Colors.white : Colors.grey.shade200,
          border: Border.all(
            color: selectedindex == index ? Colors.green : Colors.grey.shade200,
          ),
        ),
        child: Center(
            child: Text(
          categories[index],
          style: TextStyle(
              fontWeight: FontWeight.w600,
              color: selectedindex == index ? Colors.green : Colors.black),
        )),
      ),
    );
  }
}
