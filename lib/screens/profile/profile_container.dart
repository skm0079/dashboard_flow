import 'package:dashboard_flow/shared/snackbar.dart';
import 'package:flutter/material.dart';
import '../../constants.dart';

class ProfileContainer extends StatelessWidget {
  const ProfileContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      children: [
        const Padding(
          padding: EdgeInsets.all(defaultPadding),
          child: Snackbar(title: "Profile Header"),
        ),
        const SizedBox(
          height: defaultPadding,
        ),
        SingleChildScrollView(
          padding: const EdgeInsets.all(defaultPadding),
          child: Column(children: [
            Row(
              children: const [Text("Profile Container")],
            )
          ]),
        ),
      ],
    ));
  }
}
