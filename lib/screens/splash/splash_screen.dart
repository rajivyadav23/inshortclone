import 'package:inshortclone/constants.dart';
import 'package:inshortclone/screens/auth/sign_in_screen.dart';
import 'package:inshortclone/screens/auth/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          SvgPicture.asset(
            "assets/icons/splash_bg.svg",
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(defaultPadding),
              child: Column(
                children: [
                  const Spacer(),
                  SvgPicture.asset("assets/icons/gerda_logo.svg"),
                  const Spacer(),
                  ElevatedButton(
                    onPressed: () => Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignUpScreen(),
                        )),
                    style: TextButton.styleFrom(
                      minimumSize: const Size(double.infinity, 0),
                      backgroundColor: const Color(0xFF6CD8D1),
                    ),
                    child: const Text("Sign Up"),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: defaultPadding),
                    child: ElevatedButton(
                      onPressed: () => Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignInScreen(),
                        ),
                      ),
                      style: TextButton.styleFrom(
                        elevation: 0,
                        shape: const RoundedRectangleBorder(
                          side: BorderSide(
                            color: Color(0xFF6CD8D1),
                          ),
                        ),
                        minimumSize: const Size(double.infinity, 0),
                        backgroundColor: Colors.transparent,
                      ),
                      child: const Text("Sign In"),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
