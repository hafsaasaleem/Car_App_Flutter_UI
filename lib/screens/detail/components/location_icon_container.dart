import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LocationIconContainer extends StatelessWidget {
  const LocationIconContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(6),
        height: 32,
        width: 32,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.green, width: 1.2),
          borderRadius: BorderRadius.circular(8),
        ),
        child: const Icon(
          Icons.location_on_outlined,
          size: 26,
          color: Colors.green,
        ));
  }
}
