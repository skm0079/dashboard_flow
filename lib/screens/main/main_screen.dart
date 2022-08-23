import 'package:dashboard_flow/screens/main/components/side_menu.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Row(
        children: [
          // It takes 1/6 part of the screen
          const Expanded(child: SideMenu()),
          Expanded(
            // It takes 5/6 part of the screen
            flex: 5,
            child: Container(
              color: Colors.blue,
            ),
          ),
        ],
      )),
    );
  }
}
