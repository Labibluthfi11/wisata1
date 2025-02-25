import 'package:flutter/material.dart';
import '../extensions/navigator_extension.dart';
import 'login_page.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Splash Screen muncul selama 3 detik, lalu tetap di layar hingga tombol ditekan
    Future.delayed(Duration(seconds: 3), () {
      setState(() {}); // Memperbarui UI setelah 3 detik (opsional)
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.pets, size: 100, color: Colors.green),
            SizedBox(height: 20),
            Text(
              'Satwa Kita',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                context.pushReplacementPage(LoginPage()); // Navigasi ke LoginPage
              },
              child: Text("Click Me"),
            ),
          ],
        ),
      ),
    );
  }
}
