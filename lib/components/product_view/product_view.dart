import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theharvesthub/components/custom_buttons/custom_button.dart';
import 'package:theharvesthub/models/product_model.dart';
import 'package:theharvesthub/providers/cart_provider.dart';

class ProductView extends StatefulWidget {
  const ProductView({super.key, required this.model});
  final ProductModel model;

  @override
  State<ProductView> createState() => _ProductViewState();
}

class _ProductViewState extends State<ProductView> {
  int quantity = 1; // Initial quantity

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Consumer<CartProvider>(
          builder: (context, value, child) {
            return Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: double.maxFinite,
                      height: 200,
                      child: Stack(
                        children: [
                          const Positioned(
                            top: 10,
                            left: 10,
                            child: BackButton(),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Image.network(
                              widget.model.image,
                              width: size.width * 0.7,
                              height: size.width * 0.7,
                            ),
                          ),
                          Positioned(
                            bottom: 5,
                            right: 5,
                            child: Container(
                              width: 105,
                              height: 35,
                              decoration: BoxDecoration(
                                color: Colors.amber.shade800,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Center(
                                child: Text(
                                  "LKR ${widget.model.price}/=",
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      widget.model.title,
                      style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      widget.model.description,
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey.shade800,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        const Text(
                          "Quantity",
                          style: TextStyle(fontSize: 18),
                        ),
                        const SizedBox(width: 15),
                        Container(
                          width: 120,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.amber.shade900,
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              // Decrease Quantity Button
                              GestureDetector(
                                onTap: () {
                                  value.decreaseQuantity();
                                  if (quantity > 1) {
                                    setState(() {
                                      quantity--;
                                    });
                                  }
                                },
                                child: CircleAvatar(
                                  backgroundColor:
                                      Colors.black.withOpacity(0.2),
                                  radius: 18,
                                  child: const Icon(
                                    Icons.remove,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              // Quantity Value
                              Text(
                                "${value.quantity}", // Dynamically updates
                                style: const TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              // Increase Quantity Button
                              GestureDetector(
                                onTap: () {
                                  value.increaseQuantity();
                                  setState(() {
                                    quantity++;
                                  });
                                },
                                child: CircleAvatar(
                                  backgroundColor:
                                      Colors.black.withOpacity(0.2),
                                  radius: 18,
                                  child: const Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Positioned(
                  bottom: 5,
                  right: 5,
                  child: CustomButton(
                    size: size,
                    text: "Add To Cart",
                    bgColor: Colors.amber.shade800,
                    onTap: () {
                      value.addToCart(widget.model);
                    },
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
