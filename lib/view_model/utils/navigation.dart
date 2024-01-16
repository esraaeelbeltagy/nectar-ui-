import 'package:flutter/material.dart';

// to push to an screen
class Navigation {
  static void push(context, Widget secondRoute) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => secondRoute),
    );
  }

// to push to an screen and not pop again
 static void pushAndRemove(context, Widget secondRoute) {
  Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => secondRoute),
      (route) => false,
    );
  }

//to pop 
  static void pop(context) {
    Navigator.pop(context);
  }
}
