import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../../const/constString.dart';

class ConstCarousel extends StatelessWidget {
  final List<String> imageUrls = [cart, dashboard, food_mobile, profile, wallet];

   ConstCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        // Customize options here, such as autoPlay, aspectRatio, etc.
        autoPlay: true,
        viewportFraction: 0.2,
        enlargeCenterPage: true,
        aspectRatio: 18 / 9,
        autoPlayInterval: const Duration(seconds: 3),
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
      ),
      items: imageUrls.map((url) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 0.0),
              child: Image.asset(url,),
            );
          },
        );
      }).toList(),
    );
  }
}
