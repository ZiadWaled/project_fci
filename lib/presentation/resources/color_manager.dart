import 'package:flutter/material.dart';

class ColorManager {
  static const Color primary = Color(0xff061D8A);
  static const Color darkBlue = Color(0xff0034A3);
  static const Color white = Color(0xffEBEDEE);
  static const Color blue = Color(0xff0047FF);
  static const Color darkGray = Color(0xff525252);
  static const Color gray = Color(0x7f333333);
  static const Color lightGray = Color(0xff9E9E9E);
  static const Color borderText = Color(0xff304654);

  // new colors
  static const Color darkPrimary = Color(0xffd17d11);
  static const Color lightPrimary = Color(0xCCd17d11); // color with 80% opacity
  static const Color yellow = Color(0xffFAFF00);
  static const Color grey1 = Color(0xff707070);
  static const Color grey2 = Color(0xff797979);
  static const Color black = Color(0xff000000);
  static const Color firstGradient = Color(0xff434343);
  static const Color secondGradient = Color(0xff999999);
  static const Color error = Color(0xffe61f34); // red color

  static Decoration backGroundColor() {
    return const BoxDecoration(
      gradient: LinearGradient(
        colors: [firstGradient, black],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      ),
    );
  }
}
