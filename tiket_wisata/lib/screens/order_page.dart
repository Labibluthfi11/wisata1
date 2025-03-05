import 'package:flutter/material.dart';
import '../models/product.dart';
import '../data/dummy_data.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: dummyProducts.length,
        itemBuilder: (context, index) {
          final product = dummyProducts[index];
          return ListTile(
            leading: Image.network(product.imageUrl, width: 50, height: 50, fit: BoxFit.cover),
            title: Text(product.name),
            subtitle: Text('Harga: Rp${product.price.toStringAsFixed(0)}'),
            trailing: ElevatedButton(
              onPressed: () {},
              child: const Text('Pesan'),
            ),
          );
        },
      ),
    );
  }
}
