import 'package:flutter/cupertino.dart';

class AppNavigatorObserver extends RouteObserver<PageRoute<dynamic>> {
  @override
  void didPop(Route route, Route? previousRoute) {
    print("pop name ${route.settings.name}");
    super.didPop(route, previousRoute);
  }

  @override
  void didPush(Route route, Route? previousRoute) {
    print("push name ${route.settings.name}");
    super.didPush(route, previousRoute);
  }
}
