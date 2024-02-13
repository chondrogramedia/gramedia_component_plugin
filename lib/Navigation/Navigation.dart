import 'package:flutter/material.dart';

mixin Navigation {
  void back(BuildContext context) {
    Navigator.pop(context);
  }

  void goNamed(BuildContext context,
      {required String routeName, Object? arguments}) {
    Navigator.pushNamed(context, routeName, arguments: arguments);
  }

  void go(BuildContext context, {required Widget page}) {
    Navigator.push(context, MaterialPageRoute(builder: (_) => page));
  }

  void goNamedAndRemove(BuildContext context,
      {required String routeName, Object? arguments}) {
    Navigator.pushNamedAndRemoveUntil(context, routeName, (route) => false,
        arguments: arguments);
  }

  void goAndRemove(BuildContext context, {required Widget page}) {
    Navigator.pushAndRemoveUntil(
        context, MaterialPageRoute(builder: (_) => page), (route) => false);
  }

  void goNamedAndReplace(BuildContext context,
      {required String routeName, Object? arguments}) {
    Navigator.pushReplacementNamed(context, routeName, arguments: arguments);
  }

  void goAndReplace(BuildContext context, {required Widget page}) {
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => page));
  }

  void restorableGoNamedandRemove(BuildContext context,
      {required String routeName, Object? arguments}) {
    Navigator.restorablePushNamedAndRemoveUntil(
        context, routeName, (route) => false,
        arguments: arguments);
  }

  void restorableGoAndRemove(BuildContext context, {required Widget page}) {
    Navigator.restorablePushAndRemoveUntil(
        context,
        (context, arguments) => MaterialPageRoute(builder: (_) => page),
        (route) => false);
  }
}
