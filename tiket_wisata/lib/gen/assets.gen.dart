/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/material.dart';

class Assets {
  const Assets._();

  static const String _iconPath = 'assets/icons/';
  static const String _imagePath = 'assets/images/';

  static String icon(String name) => '$_iconPath$name.png';
  static String image(String name) => '$_imagePath$name.png';

  static Widget iconWidget(String name, {double size = 24.0, Color? color}) {
    return Image.asset(
      icon(name),
      width: size,
      height: size,
      color: color,
    );
  }

  static Widget imageWidget(String name, {double width = 100, double height = 100, BoxFit fit = BoxFit.cover}) {
    return Image.asset(
      image(name),
      width: width,
      height: height,
      fit: fit,
    );
  }
}
