// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class DotButton extends StatelessWidget {
  final Color dotcolor;
  const DotButton({
    Key? key,
    required this.dotcolor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 7,
      width: 7,
      decoration:  BoxDecoration(
        shape: BoxShape.circle,
        color: dotcolor,
      ),
    );
  }
}
