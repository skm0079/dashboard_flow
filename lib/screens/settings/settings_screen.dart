import 'package:dashboard_flow/controllers/menu_controller.dart';
import 'package:dashboard_flow/responsive.dart';
import 'package:dashboard_flow/screens/main/components/side_menu.dart';
import 'package:dashboard_flow/screens/settings/settings_container.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: context.read<MenuController>().scaffoldKey,
      drawer: const SideMenu(),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // It takes 1/6 part of the screen
            if (Responsive.isDesktop(context))
              const Expanded(
                child: SideMenu(),
              ),
            const Expanded(
              // It takes 5/6 part of the screen
              flex: 5,
              child: Center(
                child: SettingsContainer(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
