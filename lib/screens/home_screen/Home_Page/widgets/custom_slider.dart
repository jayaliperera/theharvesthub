import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:theharvesthub/utills/demo_data.dart';

class CustomSlider extends StatelessWidget {
  const CustomSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(height: 180.0, autoPlay: true),
      items: DemoData.images.map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 5.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.green,
                  image: DecorationImage(
                      image: NetworkImage(i), fit: BoxFit.cover)),
            );
          },
        );
      }).toList(),
    );
  }
}
