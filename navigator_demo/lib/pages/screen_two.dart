import 'package:flutter/material.dart';

class ScreenTwo extends StatefulWidget {
  const ScreenTwo({Key? key}) : super(key: key);

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> with RouteAware {
  @override
  void didPop() {
    print("one pop");
    super.didPop();
  }

  @override
  void didPush() {
    print("one push");
    super.didPush();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ScreenTwo"),
      ),
      body: Center(
        child: TextButton(
          child: const Text("One"),
          onPressed: () => Navigator.pushNamed(context, "/one"),
        ),
      ),
    );
  }
}
