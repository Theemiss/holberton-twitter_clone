import 'package:flutter/material.dart';

class SideBarMenu extends StatefulWidget {
  const SideBarMenu({Key? key}) : super(key: key);

  @override
  State<SideBarMenu> createState() => _SideBarMenuState();
}

class _SideBarMenuState extends State<SideBarMenu> {
  @override
  Widget build(BuildContext context) {
    return (Drawer(
      child: ListView(padding: EdgeInsets.zero, children: [
        DrawerHeader(
          // margin: const EdgeInsets.all(8.0),
          padding: const EdgeInsets.all(50),
          child: Image.network(
            'https://intranet.hbtn.io/assets/holberton-logo-full-default-9c9d1742abc6ffb045e9b4af78ba85770bf39126bcf2c43af9d6a53ee4aabd3d.png',
            width: 20,
            height: 20,
          ),
        ),
        Container(
          margin: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // ignore: prefer_const_constructors
              ListTile(
                // ignore: sort_child_properties_last
                title: const Text(
                  "User Name",
                  style: TextStyle(color: Colors.grey, fontSize: 22),
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    padding: const EdgeInsets.all(5),
                    child: const Text("0 Followers"),
                  ),
                  Container(
                      padding: const EdgeInsets.all(5),
                      child: const Text("0 Following"))
                ],
              )
            ],
          ),
        ),
        const Divider(
          color: Colors.black,
          thickness: 1.2,
        ),
        const ListTile(
          title: Text("Profile"),
          leading: Icon(Icons.person),
        ),
        const ListTile(title: Text("Lists"), leading: Icon(Icons.list)),
        const ListTile(title: Text("Bookmark"), leading: Icon(Icons.bookmark)),
        const ListTile(title: Text("Moments"), leading: Icon(Icons.bolt)),
        const Divider(
          color: Colors.black,
          thickness: 1.2,
        ),
        const ListTile(title: Text("Settings and privacy")),
        const ListTile(title: Text("Help Center")),
        const ListTile(title: Text("Logout")),
      ]),
    ));
  }
}
