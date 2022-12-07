import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

AppBar confirmationScreenAppBar(String title, BuildContext context) {
  return AppBar(
    elevation: 0,
    backgroundColor: kbackgroundColor,
    centerTitle: true,
    leading: IconButton(
        onPressed: () => Navigator.pop(context),
        icon: const Icon(
          CupertinoIcons.arrow_left,
          color: Colors.black,
        )),
    title: Text(
      title,
      style: const TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
    ),
  );
}
