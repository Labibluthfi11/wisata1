import 'package:flutter/material.dart';
import 'package:tiket_wisata/utils/app_assets.dart';
import 'package:tiket_wisata/utils/colors.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        backgroundColor: AppColors.primary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome to Satwa Kita!',
              style: TextStyle(fontSize: 20, color: AppColors.textPrimary),
            ),
            SizedBox(height: 20),

            // Menampilkan ikon
            AppAssets.logoWidget(size: 80),

            SizedBox(height: 20),

            // Menampilkan gambar
            AppAssets.image1Widget(width: 200, height: 200),

            SizedBox(height: 20),

            // Tombol dengan warna sekunder
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.secondary,
              ),
              child: Text('Click Me', style: TextStyle(color: Colors.white)),
            ),

            SizedBox(height: 10),

            // Teks berwarna merah (danger)
            Text('Danger Color Text', style: TextStyle(color: AppColors.danger, fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
