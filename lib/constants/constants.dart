import 'package:flutter/material.dart';

var customAppBar = AppBar(
  centerTitle: true,
  title: const Text("Responsive Appbar"),
  backgroundColor: Colors.grey[900],
);

var customBg = Colors.grey[300];

var customDrawer = Drawer(
  backgroundColor: customBg,
  child: const Column(children: [
    DrawerHeader(child: Icon(Icons.favorite)),
    ListTile(
      title: Text("H O M E"),
      leading: Icon(Icons.home),
    ),
    ListTile(
      title: Text("M E S S A G E S"),
      leading: Icon(Icons.message_sharp),
    ),
    ListTile(
      title: Text("S E T T I N G S"),
      leading: Icon(Icons.settings),
    ),
    ListTile(
      title: Text("L O G  O U T"),
      leading: Icon(Icons.logout),
    )
  ]),
);
