import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  final imageUrl =
      "https://media-exp1.licdn.com/dms/image/C5603AQExkQ7uwqkzNw/profile-displayphoto-shrink_200_200/0/1624957347242?e=1630540800&v=beta&t=12X5H4CeXVqCpcdI_Da84KHt92_OD1XRyDUfbtAuq5Y";
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl),
                ),
                //currentAccountPicture: Image.network(imageUrl),
                margin: EdgeInsets.zero,
                accountName: Text(
                  "Tejas",
                  style: TextStyle(color: Colors.black),
                ),
                accountEmail: Text(
                  "tejas@gmail.com",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.2,
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
              ),
              title: Text(
                "Profile",
                textScaleFactor: 1.2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
