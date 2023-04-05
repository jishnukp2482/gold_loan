import 'package:flutter/material.dart';

class LogOut extends StatelessWidget {
  static const routeName = '/logout';

  const LogOut({super.key});
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return SafeArea(
        child: Scaffold(
      body: Container(
        height: height,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/bg/primaryBg.png"),
                fit: BoxFit.cover)),
        child: const Center(
          child: Text("Log Out"),
        ),
      ),
    ));
  }
}
