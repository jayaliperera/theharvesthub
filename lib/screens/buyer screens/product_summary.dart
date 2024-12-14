import 'package:flutter/material.dart';
import 'package:theharvesthub/screens/login_screen.dart';

class ProductSummary extends StatelessWidget {
  const ProductSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Product Summary"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/cabbage.png',
                      height: 120,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Cabbage",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      "LKR 600.00",
                      style: TextStyle(fontSize: 18, color: Colors.black),
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
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginScreen()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(150, 50),
                      backgroundColor: Colors.green,
                    ),
                    child: const Text("Pay Now",
                        style: TextStyle(fontSize: 18, color: Colors.black)),
                  ),
                  OutlinedButton(
                    onPressed: () {
                      // Cancel Order functionality
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text("Order Cancelled")),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(150, 50),
                      backgroundColor: Colors.green,
                    ),
                    child: const Text("Cancel Order",
                        style: TextStyle(fontSize: 18, color: Colors.black)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
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
