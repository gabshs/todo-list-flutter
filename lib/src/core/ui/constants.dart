import 'package:flutter/material.dart';

sealed class ColorConstants {
  static const blueDark = Color(0xFF1E6F9F);
  static const blue = Color(0xFF4EA8DE);

  static const purpleDark = Color(0xFF5E60CE);
  static const purple = Color(0xFF8284FA);

  static const gray700 = Color(0xFF0D0D0D);
  static const gray600 = Color(0xFF1A1A1A);
  static const gray500 = Color(0xFF262626);
  static const gray400 = Color(0xFF333333);
  static const gray300 = Color(0xFF808080);
  static const gray200 = Color(0xFFD9D9D9);
  static const gray100 = Color(0xFFF2F2F2);

  static const danger = Color(0xFFE25858);
}

sealed class ImageConstants {
  static const logo = 'assets/images/logo.png';
  static const clipboard = 'assets/images/clipboard.png';
}
