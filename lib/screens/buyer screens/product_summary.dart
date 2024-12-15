import 'package:flutter/material.dart';
import 'package:theharvesthub/screens/buyer%20screens/auctionproductdetails%C2%A0.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProductSummary(),
    );
  }
}

class ProductSummary extends StatefulWidget {
  const ProductSummary({super.key});

  @override
  _ProductSummaryState createState() => _ProductSummaryState();
}

class _ProductSummaryState extends State<ProductSummary> {
  String specialInstructions = "";
  int quantity = 2;
  int selectedIndex = 0; // To track the selected tab.

  void onBottomNavTap(int index) {
    setState(() {
      selectedIndex = index;
    });
    // Navigation logic based on index
    if (index == 0) {
      // Navigate to Home
    } else if (index == 1) {
      // Navigate to Cart
    } else if (index == 2) {
      // Navigate to Auction
    } else if (index == 3) {
      // Navigate to Orders
    } else if (index == 4) {
      // Navigate to Profile
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Product Summary"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Navigates back to the previous screen
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Column(
                children: [
                  Image.asset(
                    'assets/image/cabbage.png',
                    height: 120,
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
                  Text(
                    "Quantity: $quantity Kg",
                    style: const TextStyle(fontSize: 16),
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
                  onPressed: () {},
                  child: const Text("Edit"),
                ),
              ],
            ),
            const Text(
              "Jayali Lakna Perera,\nNo. 48/3/2, Heenatikumbura Road,\nBattaramulla",
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
            TextField(
              onChanged: (value) {
                setState(() {
                  specialInstructions = value;
                });
              },
              decoration: const InputDecoration(
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
                    // Navigate to AuctionProductDetails
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const auctionproductdetails()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(150, 50),
                    backgroundColor: Colors.green,
                  ),
                  child: const Text("Pay Now", style: TextStyle(fontSize: 18)),
                ),
                const SizedBox(width: 20),
                OutlinedButton(
                  onPressed: () {
                    // Cancel Order functionality
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Order Cancelled")),
                    );
                  },
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(color: Colors.red),
                    minimumSize: const Size(150, 50),
                  ),
                  child: const Text("Cancel Order",
                      style: TextStyle(color: Colors.red, fontSize: 18)),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: onBottomNavTap,
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

class AuctionProductDetails extends StatelessWidget {
  const AuctionProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Auction Product Details"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Navigate back
          },
        ),
      ),
      body: const Center(
        child: Text(
          "Welcome to Auction Product Details",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
