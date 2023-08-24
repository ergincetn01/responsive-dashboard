import 'package:flutter/material.dart';
import 'package:responsivedashboard/constants/constants.dart';
import 'package:responsivedashboard/util/my_box.dart';
import 'package:responsivedashboard/util/my_tile.dart';

class TabletScaffold extends StatefulWidget {
  const TabletScaffold({super.key});

  @override
  State<TabletScaffold> createState() => TabletScaffoldState();
}

class TabletScaffoldState extends State<TabletScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: customAppBar,
    drawer: customDrawer,
    backgroundColor: customBg,
    body: Column(children: [
        AspectRatio(
          aspectRatio: 4,
          child: SizedBox(
            width: double.infinity,
            child: GridView.builder(
                itemCount: 4,
                gridDelegate: const  SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4),
                itemBuilder: (context, index) {
                  return const MyBox();
                }),
          ),
        ),
        Expanded(child: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index){
          return const MyTile();
        }))
      ]),);
  }
}