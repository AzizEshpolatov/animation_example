import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum RouteTypes { cupertino, material }

Future<dynamic> push(
  Widget page, {
  RouteTypes routeType = RouteTypes.cupertino,
  required BuildContext context,
}) async {
  return await Navigator.of(context).push(page.route(routeType));
}

extension on Widget {
  PageRoute route(RouteTypes routeType) {
    if (routeType == RouteTypes.cupertino) {
      return CupertinoPageRoute(builder: (_) => this);
    }
    return MaterialPageRoute(builder: (_) => this);
  }
}
