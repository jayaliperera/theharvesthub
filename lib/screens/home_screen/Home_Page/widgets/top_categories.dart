import 'package:flutter/material.dart';
import 'package:theharvesthub/components/custom_texts/custom_text.dart';

class TopCategories extends StatelessWidget {
  TopCategories({
    super.key,
  });

  final List<IconData> icons = [
    Icons.shopping_basket,
    Icons.shopping_basket,
    Icons.shopping_basket,
    ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          children: [
            CustomText(
                text: "Categories",
                fontSize: 20,
                fontWeight: FontWeight.w600),
            Spacer(),
            CustomText(
              text: "See All",
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.green,
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          child: Row(
            children: List.generate(icons.length, (index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: index == 0 ? Colors.green : Colors.grey.shade300,
                    border: Border.all(
                        color: index == 0
                            ? Colors.green.shade700
                            : Colors.grey.shade400),
                  ),
                  child: Icon(
                    icons[index],
                    color: index == 0 ? Colors.white : Colors.grey.shade700,
                  ),
                ),
              );
            }),
          ),
        ),
      ],
    );
  }
}
