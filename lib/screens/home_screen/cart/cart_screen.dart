import 'package:flutter/material.dart';
import 'package:theharvesthub/components/custom_buttons/custom_button.dart';
import 'package:theharvesthub/components/custom_texts/custom_text.dart';
import 'package:theharvesthub/models/product_model.dart';
import 'package:theharvesthub/utills/demo_data.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  final List<ProductModel> products = DemoData.products;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
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
                  itemCount: DemoData.products.length,
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
                                      image: NetworkImage(
                                          (products[index].image)))),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomText(
                                    text: products[index].title,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600),
                                const SizedBox(
                                  height: 10,
                                ),
                                Chip(
                                    label:
                                        Text("LKR ${products[index].price}0"))
                              ],
                            ),
                            const Spacer(),
                            Container(
                              height: 35,
                              width: 80,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 209, 231, 234),
                                borderRadius: BorderRadius.circular(35),
                                border:
                                    Border.all(color: Colors.green.shade900),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Icon(
                                    Icons.remove,
                                    color: Colors.green.shade900,
                                  ),
                                  const CustomText(
                                    text: "1",
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  Icon(
                                    Icons.add,
                                    color: Colors.green.shade900,
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 10,
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
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
