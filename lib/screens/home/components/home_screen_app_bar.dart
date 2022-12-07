import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../constants.dart';

AppBar homeScreenAppBar(String title) {
  return AppBar(
    elevation: 0,
    iconTheme: const IconThemeData(color: Colors.black),
    backgroundColor: kbackgroundColor,
    centerTitle: true,
    leading: const Icon(CupertinoIcons.arrow_left),
    title: Text(
      title,
      style: const TextStyle(
        fontFamily: "Source Sans Pro ",
        color: kTextColor,
        fontWeight: FontWeight.w800,
      ),
    ),
    actions: [
      Image.asset(
        "assets/icons/icons8-funnel-50.png",
        color: Colors.black,
        height: 22,
        width: 22,
      ),
      const SizedBox(width: 12),
    ],
  );
}
