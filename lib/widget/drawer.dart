import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String myPic = "https://avatars.githubusercontent.com/u/44065962?v=4";
    return Drawer(
      child: ListView(children: [
        DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              margin: EdgeInsets.zero,
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(myPic),
              ),
              accountName: const Text("Urooj Khan"),
              accountEmail: const Text("uroojk844@gmail.com"),
            )),
        const ListTile(
          leading: Icon(
            CupertinoIcons.profile_circled,
            color: Colors.black,
          ),
          title: Text("Profile"),
        ),
        const ListTile(
          leading: Icon(
            CupertinoIcons.home,
            color: Colors.black,
          ),
          title: Text("Home"),
        ),
        const ListTile(
          leading: Icon(
            CupertinoIcons.mail,
            color: Colors.black,
          ),
          title: Text("Contact us"),
        ),
      ]),
    );
  }
}
