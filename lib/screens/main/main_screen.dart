import 'package:dashboard_flow/screens/dashboard/dashboard_screen.dart';
import 'package:dashboard_flow/screens/main/components/side_menu.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          // It takes 1/6 part of the screen
          Expanded(child: SideMenu()),
          Expanded(
              // It takes 5/6 part of the screen
              flex: 5,
              child: DashboardScreen()),
        ],
      )),
    );
  }
}
