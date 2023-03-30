import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: const <Widget>[
          DrawerHeader(child: Placeholder(color: Colors.red,),),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("S E T T I N G"),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("S E T T I N G"),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("S E T T I N G"),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("S E T T I N G"),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("S E T T I N G"),
          )
        ],
      ),
    );
  }
}
