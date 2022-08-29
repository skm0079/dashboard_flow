// import screens to route

import 'package:dashboard_flow/screens/main/main_screen.dart';
import 'package:dashboard_flow/screens/profile/profile_screen.dart';
import 'package:dashboard_flow/screens/settings/settings_screen.dart';
import 'package:dashboard_flow/screens/task/task_screen.dart';

// create a Map appRoutes to hold all the routes

var appRoutes = {
  '/': (context) => const MainScreen(),
  '/profile': (context) => const ProfileScreen(),
  '/task': (context) => const TaskScreen(),
  '/settings': (context) => const SettingsScreen()
};
