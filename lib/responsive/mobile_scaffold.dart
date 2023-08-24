import 'package:flutter/material.dart';
import 'package:responsivedashboard/constants/constants.dart';
import 'package:responsivedashboard/util/my_box.dart';
import 'package:responsivedashboard/util/my_tile.dart';

class MobileScaffold extends StatefulWidget {
  const MobileScaffold({super.key});

  @override
  State<MobileScaffold> createState() => MobileScaffoldState();
}

class MobileScaffoldState extends State<MobileScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar,
      drawer: customDrawer,
      backgroundColor: customBg,
      body: Column(children: [
        AspectRatio(
          aspectRatio: 1,
          child: SizedBox(
            width: double.infinity,
            child: GridView.builder(
                itemCount: 4,
                gridDelegate: const  SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (context, index) {
                  return const MyBox();
                }),
          ),
        ),
        Expanded(child: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index){
          return MyTile();
        }))
      ]),
    );
  }
}
