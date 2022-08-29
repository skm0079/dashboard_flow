import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        // It enables Scrolling
        child: Column(
          children: [
            DrawerHeader(
              child: Image.asset("assets/images/logo.png"),
            ),
            DrawerListTile(
              press: () {
                Navigator.pushNamed(context, '/');
              },
              svgSrc: 'assets/icons/menu_dashbord.svg',
              title: 'Dashboard',
            ),
            DrawerListTile(
              press: () {
                Navigator.pushNamed(context, '/task');
              },
              svgSrc: 'assets/icons/menu_task.svg',
              title: 'Task',
            ),
            DrawerListTile(
              press: () {
                Navigator.pushNamed(context, '/profile');
              },
              svgSrc: 'assets/icons/menu_profile.svg',
              title: 'Profile',
            ),
            DrawerListTile(
              press: () {
                Navigator.pushNamed(context, '/settings');
              },
              svgSrc: 'assets/icons/menu_setting.svg',
              title: 'Settings',
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    required this.title,
    required this.svgSrc,
    required this.press,
  }) : super(key: key);

  final String title, svgSrc;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      // TODO: Fix using SVG issues, icon used instead
      leading: SvgPicture.asset(
        svgSrc,
        color: Colors.white54,
        height: 16,
      ),
      title: Text(
        title,
        style: const TextStyle(color: Colors.white54),
      ),
    );
  }
}
