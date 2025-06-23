import 'package:flutter/material.dart';

extension ScreenUtilsExtension on BuildContext {
  MediaQueryData get mediaQuery => MediaQuery.of(this);
  double get screenHeight => mediaQuery.size.height;
  double get screenWidth => mediaQuery.size.width;
  Orientation get currentOrientation => mediaQuery.orientation;
}
