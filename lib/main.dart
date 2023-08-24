import "package:flutter/material.dart";
import "package:responsivedashboard/responsive/desktop_scaffold.dart";
import "package:responsivedashboard/responsive/mobile_scaffold.dart";
import "package:responsivedashboard/responsive/responsive_layout.dart";
import "package:responsivedashboard/responsive/tablet_scaffold.dart";

class ResponsiveDashboard extends StatelessWidget {
  const ResponsiveDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ResponsiveLayout(
          desktopScaffold: const DesktopScaffold(),
          mobileScaffold: const MobileScaffold(),
          tabletScaffold: const TabletScaffold()),
    );
  }
}


void main(){
  runApp(ResponsiveDashboard());
}