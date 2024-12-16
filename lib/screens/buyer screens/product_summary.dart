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
      home: ProductSummary(),
    );
  }
}


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

                      showModalBottomSheet(
                        context: context,
                        isScrollControlled: true,
                        builder: (BuildContext context) {
                          return const PaymentMethodPopup();

                      // Show Payment Method Popup
                      showModalBottomSheet(
                        context: context,
                        shape: const RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(20)),
                        ),
                        builder: (BuildContext context) {
                          return SizedBox(
                            height: 300,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.all(16.0),
                                  child: Text(
                                    "Select Payment Method",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                ListTile(
                                  leading: const Icon(Icons.credit_card,
                                      color: Colors.blue),
                                  title: const Text("Credit Card"),
                                  trailing: const Text(
                                    "VISA",
                                    style: TextStyle(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  onTap: () {
                                    Navigator.pop(context);
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                          content:
                                              Text("Credit Card Selected")),
                                    );
                                  },
                                ),
                                ListTile(
                                  leading: const Icon(Icons.money,
                                      color: Colors.green),
                                  title: const Text("Cash"),
                                  onTap: () {
                                    Navigator.pop(context);
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                          content: Text("Cash Selected")),
                                    );
                                  },
                                ),
                                const Spacer(),
                                Center(
                                  child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        const SnackBar(
                                            content:
                                                Text("Proceeding to Payment")),
                                      );
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.green,
                                      foregroundColor: Colors.white,
                                      minimumSize: const Size(200, 50),
                                    ),
                                    child: const Text("Proceed"),
                                  ),
                                ),
                                const SizedBox(height: 10),
                              ],
                            ),
                          );

                        },
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(150, 50),
                      backgroundColor: Colors.green,
                      foregroundColor: Colors.black,
                    ),
                    child:
                        const Text("Pay Now", style: TextStyle(fontSize: 18)),
                  ),
                  const SizedBox(width: 20),
                  OutlinedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text("Order Cancelled")),
                      );
                    },
                    style: OutlinedButton.styleFrom(
                      minimumSize: const Size(150, 50),
                      backgroundColor: Colors.green,
                      foregroundColor: Colors.black,
                    ),
                    child: const Text("Cancel Order",
                        style: TextStyle(color: Colors.red, fontSize: 18)),
                  ),
                ],
              ),
            ],
          ),
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

class PaymentMethodPopup extends StatelessWidget {
  const PaymentMethodPopup({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 16.0,
        right: 16.0,
        top: 16.0,
        bottom: MediaQuery.of(context).viewInsets.bottom + 16.0,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            "Select Payment Method",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // Handle Credit Card selection
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.grey[200],
              foregroundColor: Colors.black,
              padding: const EdgeInsets.all(16),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Credit Card"),
                Text("VISA", style: TextStyle(color: Colors.blue)),
              ],
            ),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              // Handle Cash selection
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.grey[200],
              foregroundColor: Colors.black,
              padding: const EdgeInsets.all(16),
            ),
            child: const Align(
              alignment: Alignment.centerLeft,
              child: Text("Cash"),
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // Proceed functionality
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text("Proceeding with payment...")),
              );
              Navigator.pop(context);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              minimumSize: const Size(double.infinity, 50),
            ),
            child: const Text(
              "Proceed",
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
