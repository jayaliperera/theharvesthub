import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theharvesthub/components/custom_buttons/custom_button.dart';
import 'package:theharvesthub/components/custom_texts/custom_text.dart';
import 'package:theharvesthub/providers/cart_provider.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Consumer<CartProvider>(builder: (context, value, child) {
            return Column(
              children: [
                const Row(
                  children: [
                    BackButton(),
                    Spacer(),
                    CustomText(
                        text: "My Cart",
                        fontSize: 20,
                        fontWeight: FontWeight.w900),
                    Spacer()
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: value.cartitems.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color.fromARGB(255, 209, 231, 234),
                          ),
                          child: Row(
                            children: [
                              Container(
                                width: 100,
                                height: 100,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: NetworkImage((value
                                            .cartitems[index].model.image)))),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomText(
                                      text: value.cartitems[index].model.title,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Chip(
                                      label: Text(
                                          "LKR ${value.cartitems[index].model.price}0"))
                                ],
                              ),
                              const Spacer(),
                              // ---------------------
                              Container(
                                width: 90,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Colors.amber.shade900,
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    // Decrease Quantity Button
                                    GestureDetector(
                                      onTap: () {
                                        value.decreaseQuantity();
                                      },
                                      child: CircleAvatar(
                                        backgroundColor:
                                            Colors.black.withOpacity(0.3),
                                        radius: 15,
                                        child: const Icon(
                                          Icons.remove,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    // Quantity Value
                                    Text(
                                      "${value.cartitems[index].quantity}", // Dynamically updates
                                      style: const TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    // Increase Quantity Button
                                    GestureDetector(
                                      onTap: () {
                                        value.increaseQuantity();
                                      },
                                      child: CircleAvatar(
                                        backgroundColor:
                                            Colors.black.withOpacity(0.2),
                                        radius: 15,
                                        child: const Icon(
                                          Icons.add,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              const SizedBox(
                                width: 5,
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Container(
                  height: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.grey.shade300,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Row(
                        children: [
                          Padding(padding: EdgeInsets.all(8.0)),
                          CustomText(
                            text: "Total",
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                          Spacer(),
                          CustomText(
                            text: " LKR 125 000/=",
                            fontSize: 19,
                            fontWeight: FontWeight.w600,
                            color: Colors.orange,
                          ),
                          SizedBox(
                            width: 10,
                          )
                        ],
                      ),
                      const SizedBox(height: 20),
                      CustomButton(
                        size: size,
                        text: "Buy Now",
                        bgColor: Colors.green.shade800,
                        onTap: () {},
                      ),
                    ],
                  ),
                )
              ],
            );
          }),
        ),
      ),
    );
  }
}
