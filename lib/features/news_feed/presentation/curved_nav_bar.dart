import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class CurvedNavBar extends StatelessWidget {
  const CurvedNavBar({super.key});
  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      // key: _bottomNavigationKey,
      index: 0,
      // height: 75.0,
      items: const <Widget>[
        Icon(
          Icons.add,
          size: 32,
        ),
        Icon(
          Icons.home_outlined,
          size: 32,
        ),
        Icon(
          Icons.map_outlined,
          size: 32,
        ),
        Icon(
          Icons.chat_outlined,
          size: 32,
        ),
        Icon(
          Icons.account_circle_outlined,
          size: 32,
        ),
      ],
      color: const Color.fromARGB(255, 252, 252, 252),
      buttonBackgroundColor: Colors.white,
      backgroundColor: Colors.lightBlueAccent.shade700,
      animationCurve: Curves.easeInOut,
      animationDuration: const Duration(milliseconds: 600),
      onTap: (index) {
        // setState(() {
        //   _page = index;
        // });
      },
      letIndexChange: (index) => true,
    );
  }
}
