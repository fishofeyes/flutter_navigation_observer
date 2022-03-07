import 'package:flutter/material.dart';

import '../route.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({Key? key}) : super(key: key);

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> with RouteAware {
  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    routeObserver.subscribe(this, ModalRoute.of(context) as PageRoute<dynamic>);
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    routeObserver.unsubscribe(this);
    super.dispose();
  }

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
        title: const Text("ScreenOne"),
      ),
      body: Center(
        child: TextButton(
          child: const Text("Two"),
          onPressed: () => Navigator.pushNamed(context, "/two"),
        ),
      ),
    );
  }
}
