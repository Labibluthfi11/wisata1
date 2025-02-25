import 'package:flutter/material.dart';

extension NavigatorExtension on BuildContext {
  /// Navigasi ke halaman baru dengan `push`
  void pushPage(Widget page) {
    Navigator.push(
      this,
      MaterialPageRoute(builder: (context) => page),
    );
  }

  /// Navigasi menggantikan halaman sebelumnya dengan `pushReplacement`
  void pushReplacementPage(Widget page) {
    Navigator.pushReplacement(
      this,
      MaterialPageRoute(builder: (context) => page),
    );
  }

  /// Navigasi dan menghapus semua halaman sebelumnya (pushAndRemoveUntil)
  void pushAndRemoveUntilPage(Widget page) {
    Navigator.pushAndRemoveUntil(
      this,
      MaterialPageRoute(builder: (context) => page),
      (route) => false, // Menghapus semua halaman sebelumnya
    );
  }

  /// Kembali ke halaman sebelumnya
  void popPage() {
    Navigator.pop(this);
  }
}
