import 'package:flutter/cupertino.dart';
import 'package:navigator_demo/pages/screen_one.dart';
import 'package:navigator_demo/pages/screen_two.dart';

final RouteObserver<PageRoute> routeObserver = RouteObserver<PageRoute>();
final routes = {
  '/one': (context) => const ScreenOne(),
  '/two': (context) => const ScreenTwo(),
};

Route? onGenerateRoute(RouteSettings settings) {
  // 统一处理
  final String? name = settings.name;
  final Function? pageContentBuilder = routes[name] as Function;
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final CupertinoPageRoute route = CupertinoPageRoute<Map<String, dynamic>>(
        builder: (context) => pageContentBuilder(context, arguments: settings.arguments),
        settings: settings,
      );
      return route;
    } else {
      final CupertinoPageRoute route = CupertinoPageRoute<Map<String, dynamic>>(
          builder: (context) => pageContentBuilder(context), settings: settings);
      return route;
    }
  }
  return null;
}
