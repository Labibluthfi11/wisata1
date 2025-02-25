import 'package:flutter/material.dart';
import '../extensions/navigator_extension.dart';
import 'main_page.dart'; // Import halaman tujuan

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _login() {
    String email = _emailController.text;
    String password = _passwordController.text;

    if (email.isNotEmpty && password.isNotEmpty) {
      // Pindah ke MainPage setelah login sukses
      context.pushAndRemoveUntilPage(MainPage());
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Email dan password harus diisi")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch, // Supaya tombol full width
          children: [
            TextField(
              controller: _emailController,
              decoration: InputDecoration(labelText: "Email"),
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 10),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(labelText: "Password"),
              obscureText: true,
            ),
            SizedBox(height: 20),
            SizedBox(
              width: double.infinity, // Tombol memanjang penuh
              child: ElevatedButton(
                onPressed: _login,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green, // Warna hijau
                  padding: EdgeInsets.symmetric(vertical: 16), // Lebih besar
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8), // Biar lebih smooth
                  ),
                ),
                child: Text(
                  "Login",
                  style: TextStyle(fontSize: 18, color: Colors.white), // Teks putih
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
