import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theharvesthub/components/custom_texts/custom_text.dart';
import 'package:theharvesthub/models/product_model.dart';
import 'package:theharvesthub/providers/auth_provider.dart';
import 'package:theharvesthub/screens/home_screen/Home_Page/widgets/custom_slider.dart';
import 'package:theharvesthub/utills/demo_data.dart';
import 'package:theharvesthub/screens/profile/profile_screen.dart';

import 'widgets/custom_action_bar.dart';
import 'widgets/product_grid.dart';
import 'widgets/top_categories.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomePage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const HomePageContent(),
    const Center(child: Text("Cart Page")),
    const Center(child: Text("Auction Page")),
    const Center(child: Text("Order Page")),
    const ProfilePage(), // Navigates to Profile Page
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex], // Display selected page
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.green, // Active tab color
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,

        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: "Cart"),
          BottomNavigationBarItem(icon: Icon(Icons.gavel), label: "Auction"),
          BottomNavigationBarItem(
              icon: Icon(Icons.receipt_long), label: "Order"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}

class HomePageContent extends StatelessWidget {
  const HomePageContent({super.key}); // Add const constructor
  @override
  Widget build(BuildContext context) {
    List<ProductModel> products = DemoData.products;

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomActionBar(),
              const SizedBox(height: 8),
               CustomText(
                  text: "Hello ${Provider.of<AuthProvider>(context).userModel!.name}",
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
              const CustomText(
                text: "Let's start shopping!",
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Colors.grey,
              ),
              const SizedBox(height: 10),
              const CustomSlider(),
              const SizedBox(height: 10),
              TopCategories(),
              const SizedBox(height: 10),
              ProductGrid(products: products),
            ],
          ),
        ),
      ),
    );
  }
}
