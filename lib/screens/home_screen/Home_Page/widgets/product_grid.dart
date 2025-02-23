import 'package:flutter/material.dart';
import 'package:theharvesthub/components/custom_texts/custom_text.dart';
import 'package:theharvesthub/models/product_model.dart';
import 'package:theharvesthub/utills/custom_navigators.dart';
import 'package:theharvesthub/utills/demo_data.dart';

class ProductGrid extends StatelessWidget {
  const ProductGrid({
    super.key,
    required this.products,
  });

  final List<ProductModel> products;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: DemoData.products.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
      itemBuilder: (context, index) {
        return Container(
          height: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.grey.shade400,
            image: DecorationImage(
                image: NetworkImage(products[index].image), fit: BoxFit.cover),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Chip(
                      label: Text("LKR ${products[index].price}00"),
                    ),
                    const Icon(
                      Icons.favorite_outline_rounded,
                      color: Colors.grey,
                    )
                  ],
                ),
                Positioned(
                    bottom: 5,
                    left: 5,
                    child: GestureDetector(
                      onTap: () {
                        CustomNavigators.goTo(context, const CartScreen());
                      },
                      child: CustomText(
                          text: products[index].title,
                          fontSize: 15,
                          fontWeight: FontWeight.w600),
                    )),
              ],
            ),
          ),
        );
      },
    );
  }
}
