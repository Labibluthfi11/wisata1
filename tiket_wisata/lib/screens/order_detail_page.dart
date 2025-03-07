import 'package:flutter/material.dart';
import '../models/product.dart';

class OrderDetailPage extends StatelessWidget {
  final Product product;

  const OrderDetailPage({super.key, required this.product});

  void _showPaymentDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("QRIS Payment"),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.network(
              "assets/images/qr.png", // Ganti dengan URL QRIS yang benar
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 10),
            const Text("Silakan scan QRIS untuk pembayaran."),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("Tutup"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(product.name)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.network(product.imageUrl, width: 300, height: 200, fit: BoxFit.cover),
            ),
            const SizedBox(height: 10),
            Text(product.name, style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            Text("Harga: Rp${product.price.toStringAsFixed(0)}", style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: () => _showPaymentDialog(context),
                child: const Text("Bayar dengan QRIS"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
