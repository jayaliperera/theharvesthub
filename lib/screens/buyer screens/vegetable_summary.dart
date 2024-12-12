import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProductSummaryScreen(),
    );
  }
}

class ProductSummaryScreen extends StatelessWidget {
  const ProductSummaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Product Summary"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            // Add back navigation
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Center(
              child: Column(
                children: [
                  Image.network(
                    'data:image/jpeg;base64,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', // Replace with actual image URL
                    height: 100,
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Cabbage",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    "LKR 600.00",
                    style: TextStyle(fontSize: 18, color: Colors.grey),
                  ),
                  const Text(
                    "Quantity: 2 Kg",
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Order placed by",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                TextButton(
                  onPressed: () {
                    // Edit button functionality
                  },
                  child: const Text("Edit"),
                ),
              ],
            ),
            const Text(
              "Dilini Nimesha,\nNo. 48/3/2, Heenatikumbura Road,\nBattaramulla",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 10),
            const Text(
              "Confirm your address before you place your order",
              style: TextStyle(fontSize: 14, color: Colors.red),
            ),
            const SizedBox(height: 20),
            const Text(
              "Special Instructions",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText:
                    'Please write any specific instructions to the seller regarding your order',
              ),
              maxLines: 4,
            ),
            const SizedBox(height: 20),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Delivery Charge :",
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  "300.00",
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total :",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Text(
                  "900.00",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Pay Now functionality
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                  ),
                  child: const Text("Pay Now"),
                ),
                OutlinedButton(
                  onPressed: () {
                    // Cancel Order functionality
                  },
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(color: Colors.red),
                  ),
                  child: const Text(
                    "Cancel Order",
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.gavel),
            label: 'Auction',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.folder),
            label: 'Order',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}
