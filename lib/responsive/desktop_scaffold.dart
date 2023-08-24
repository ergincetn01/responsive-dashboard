import 'package:flutter/material.dart';
import 'package:responsivedashboard/constants/constants.dart';
import 'package:responsivedashboard/util/my_box.dart';
import 'package:responsivedashboard/util/my_tile.dart';

class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({super.key});

  @override
  State<DesktopScaffold> createState() => DesktopScaffoldState();
}

class DesktopScaffoldState extends State<DesktopScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar,
      backgroundColor: customBg,
      body: Row(
        children: [
          customDrawer,
          Expanded(
            flex: 2,
              child: Column(children: [
            AspectRatio(
              aspectRatio: 4,
              child: SizedBox(
                width: double.infinity,
                child: GridView.builder(
                    itemCount: 4,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4),
                    itemBuilder: (context, index) {
                      return const MyBox();
                    }),
              ),
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return const MyTile();
                    }))
          ])),
          Expanded(
              child: Column(
            children: [
              Expanded(
                  child: Container(
                color: Colors.pink,
              ))
            ],
          ))
        ],
      ),
    );
  }
}
