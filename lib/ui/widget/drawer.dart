import 'package:flutter/material.dart';
import 'package:hotw_test/const/const.dart';

class Drawerr extends StatelessWidget {
  const Drawerr({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: NavigationDrawer(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text("Name"),
            accountEmail: Text("Email"),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              backgroundImage: AssetImage(sIconPath),
            ),

            ///↓ pag may Firebase na
            //onDetailsPressed
          ),
          ListTile(
            leading: Icon(Icons.people),
            title: Text('Profile'),
          ),
          ListTile(title: Text('Profile2')),
          ListTile(title: Text('Profile3')),
          ListTile(title: Text('Profile4')),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Profile5'),
          ),
        ],
      ),
    );
  }
}
