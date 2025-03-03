import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Welcome to Satwa Kita!",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Icon(Icons.play_circle_fill, size: 50, color: Colors.red),
          SizedBox(height: 10),
          Text(
            "Enjoy exploring the zoo!",
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
