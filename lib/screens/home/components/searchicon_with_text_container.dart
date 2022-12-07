// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class SearchIcon_With_Text_Container extends StatelessWidget {
  final Widget icon;
  const SearchIcon_With_Text_Container({
    Key? key,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          icon,
          const SizedBox(width: 6),
          const Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintStyle: TextStyle(color: Colors.black),
                hintText: "Airport in Nuremberg, Germany",
                // prefixIcon: icon,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
