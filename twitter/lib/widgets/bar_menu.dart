import 'package:flutter/material.dart';

class BarMenu extends StatefulWidget {
  const BarMenu({Key? key}) : super(key: key);

  @override
  State<BarMenu> createState() => _BarMenuState();
}

class _BarMenuState extends State<BarMenu> {
  @override
  Widget build(BuildContext context) {
    return (BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.white,
      selectedFontSize: 14,
      unselectedFontSize: 14,
      // ignore: prefer_const_literals_to_create_immutables
      items: [
        const BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "",
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: "",
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.notifications),
          label: "",
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.mail),
          label: "",
        ),
      ],
      onTap: (value) {
        // Respond to item press.
      },
    ));
  }
}
