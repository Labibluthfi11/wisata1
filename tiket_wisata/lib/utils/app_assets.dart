import 'package:flutter/material.dart';
import 'package:tiket_wisata/gen/assets.gen.dart';

class AppAssets {
  // Akses ikon dan gambar dengan lebih mudah
  static String logo = Assets.icon('logo1');
  static String image1 = Assets.image('image1');

  static Widget logoWidget({double size = 50}) {
    return Assets.iconWidget('logo1', size: size);
  }

  static Widget image1Widget({double width = 100, double height = 100}) {
    return Assets.imageWidget('image1', width: width, height: height);
  }
}
