import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyBottomNavigationBar extends StatefulWidget {
  const MyBottomNavigationBar({Key? key}) : super(key: key);

  @override
  State<MyBottomNavigationBar> createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int _selectedindex = 0;

  void onItemTap(int index) {
    setState(() {
      _selectedindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _selectedindex,
      onTap: onItemTap,
      type: BottomNavigationBarType.fixed,
      elevation: 10,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      unselectedItemColor: Colors.black,
      selectedItemColor: Colors.green.shade700,
      items: [
        BottomNavigationBarItem(
          icon:
              SvgPicture.asset("assets/icons/search.svg", color: Colors.black),
          activeIcon: SvgPicture.asset("assets/icons/search.svg"),
          label: "Home",
        ),
        const BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.heart),
          activeIcon: Icon(CupertinoIcons.heart),
          label: "Search",
        ),
        const BottomNavigationBarItem(
          icon: Icon(FontAwesomeIcons.commentDots),
          activeIcon: Icon(FontAwesomeIcons.commentDots),
          label: "Ticket",
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.account_circle_outlined),
          activeIcon: Icon(Icons.account_circle_outlined),
          label: "Profile",
        ),
      ],
    );
  }
}


// class MyBottomNavigationBar extends StatefulWidget {
//   const MyBottomNavigationBar({super.key});

//   @override
//   State<MyBottomNavigationBar> createState() => _MyBottomNavigationBarState();
// }

// class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
//   int selectedindex = 0;
//   bool isSelected = true;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.only(left: 20, right: 20),
//       height: 50,
//       decoration: BoxDecoration(
//         boxShadow: [
//           BoxShadow(
//               offset: const Offset(0, -10),
//               blurRadius: 35,
//               color: Colors.grey.shade300),
//         ],
//         color: kbackgroundColor,
//       ),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           IconButton(
//             onPressed: () {},
//             icon: const Icon(FontAwesomeIcons.commentDots, color: Colors.green),
//           ),
//           IconButton(
//             onPressed: () {},
//             icon: const Icon(CupertinoIcons.heart),
//           ),
//           IconButton(
//             onPressed: () {},
//             icon: const Icon(FontAwesomeIcons.commentDots),
//           ),
//           IconButton(
//             onPressed: () {},
//             icon: const Icon(Icons.account_circle_outlined),
//           ),
//         ],
//       ),
//     );
//   }
// }
