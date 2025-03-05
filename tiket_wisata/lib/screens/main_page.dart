import 'package:flutter/material.dart';
import 'order_page.dart'; // Ubah dari home_page.dart ke order_page.dart
import 'gallery_page.dart';
import 'profile_page.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    OrderPage(), // Mengubah dari HomePage() ke OrderPage()
    GalleryPage(),
    ProfilePage(),
  ];

  final List<String> _titles = [
    "Order Page", // Mengubah dari "Home Page" ke "Order Page"
    "Gallery Page",
    "Profile Page",
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_titles[_selectedIndex]), // Menyesuaikan judul halaman
        backgroundColor: Colors.purple,
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.image), label: "Gallery"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}
