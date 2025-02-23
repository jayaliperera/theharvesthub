import 'package:flutter/material.dart';
import 'package:theharvesthub/components/custom_texts/custom_text.dart';
import 'package:theharvesthub/models/product_model.dart';
import 'package:theharvesthub/screens/home_screen/Home_Page/widgets/custom_slider.dart';
import 'package:theharvesthub/utills/demo_data.dart';

import 'widgets/custom_action_bar.dart';
import 'widgets/product_grid.dart';
import 'widgets/top_categories.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomePage> {
  List<ProductModel> products = DemoData.products;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomActionBar(),
            const SizedBox(
              height: 8,
            ),
            const CustomText(
                text: "Hello Jayali", fontSize: 20, fontWeight: FontWeight.w600),
            const CustomText(
              text: "Let's start shopping!",
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: Colors.grey,
            ),
            const SizedBox(
              height: 10,
            ),
            const CustomSlider(),
            const SizedBox(
              height: 10,
            ),
            TopCategories(),
            const SizedBox(
              height: 10,
            ),
            ProductGrid(products: products)
          ],
        ),
      ),
    )));
  }
}
