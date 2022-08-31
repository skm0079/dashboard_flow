import 'package:dashboard_flow/controllers/google_sign_in.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: <Widget>[
          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
                primary: Colors.white,
                onPrimary: Colors.black,
                minimumSize: const Size(double.infinity, 50)),
            onPressed: () {
              final provider =
                  Provider.of<GoogleSignInProvider>(context, listen: false);

              provider.googleLogin();
            },
            label: const Text("Sign in with Google"),
            icon: const FaIcon(
              FontAwesomeIcons.google,
              color: Colors.redAccent,
            ),
          ),
        ],
      ),
    );
  }
}
