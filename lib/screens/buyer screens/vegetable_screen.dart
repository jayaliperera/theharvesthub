// import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';
// import 'package:theharvesthub/screens/buyer%20screens/buyer_dashboard.dart';
// import 'package:theharvesthub/screens/buyer%20screens/product_summary.dart';

// class Vegetablecreen extends StatefulWidget {
//   const Vegetablecreen({super.key});

//   @override
//   State<Vegetablecreen> createState() => _ProductScreenState();
// }

// class _ProductScreenState extends State<Vegetablecreen> {
//   int _selectedIndex = 0;
//   final iconList = <IconData>[
//     Icons.home,
//     Icons.shopping_cart,
//     Icons.receipt,
//     Icons.person,
//   ];

//   final List<String> bannerImages = [
//     'assets/images/banner1.png',
//     'assets/images/banner2.png',
//     'assets/images/banner3.png',
//   ];

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         elevation: 5,
//         title: Row(
//           children: [
//             Image.asset(
//               'assets/images/logo.png',
//               height: 30,
//             ),
//             const SizedBox(width: 10),
//             const Text(
//               'Vegetables',
//               style: TextStyle(
//                 color: Colors.black,
//                 fontWeight: FontWeight.w700,
//                 fontSize: 20,
//               ),
//             ),
//           ],
//         ),
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               TextField(
//                 decoration: InputDecoration(
//                   prefixIcon: const Icon(Icons.search),
//                   hintText: 'Search products...',
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(25),
//                   ),
//                   filled: true,
//                   fillColor: const Color.fromARGB(255, 221, 255, 187),
//                   contentPadding: const EdgeInsets.symmetric(vertical: 0),
//                 ),
//               ),
//               const SizedBox(height: 15),
//               CarouselSlider(
//                 options: CarouselOptions(
//                   height: 150,
//                   autoPlay: true,
//                   enlargeCenterPage: true,
//                   aspectRatio: 16 / 9,
//                   viewportFraction: 0.9,
//                 ),
//                 items: bannerImages.map((image) {
//                   return Builder(
//                     builder: (BuildContext context) {
//                       return Container(
//                         width: MediaQuery.of(context).size.width,
//                         margin: const EdgeInsets.symmetric(horizontal: 5.0),
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(15),
//                           image: DecorationImage(
//                             image: AssetImage(image),
//                             fit: BoxFit.cover,
//                           ),
//                         ),
//                       );
//                     },
//                   );
//                 }).toList(),
//               ),
//               const SizedBox(height: 20),
//               GridView.count(
//                 shrinkWrap: true,
//                 physics: const NeverScrollableScrollPhysics(),
//                 crossAxisCount: 2,
//                 crossAxisSpacing: 10,
//                 mainAxisSpacing: 20,
//                 childAspectRatio: 3 / 3,
//                 children: [
//                   buildVegetableCard(
//                     'assets/images/tomato.jpeg',
//                     'Tomato',
//                     'Rs.600/Kg',
//                   ),
//                   buildVegetableCard(
//                     'assets/images/cauliflower.jpeg',
//                     'Cauliflower',
//                     'Rs.450/Kg',
//                   ),
//                   buildVegetableCard(
//                     'assets/images/beet.jpeg',
//                     'Beets',
//                     'Rs.100/Kg',
//                   ),
//                   GestureDetector(
//                     onTap: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => const ProductSummary(),
//                         ),
//                       );
//                     },
//                     child: buildVegetableCard(
//                       'assets/images/cabbage.png',
//                       'cabbage',
//                       'Rs.150/Kg',
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {},
//         backgroundColor: const Color.fromARGB(255, 221, 255, 187),
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(20),
//         ),
//         elevation: 8,
//         child: const Icon(Icons.gavel),
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//       bottomNavigationBar: AnimatedBottomNavigationBar(
//         icons: iconList,
//         activeIndex: _selectedIndex,
//         gapLocation: GapLocation.center,
//         notchSmoothness: NotchSmoothness.smoothEdge,
//         onTap: _onItemTapped,
//         backgroundColor: const Color.fromARGB(255, 221, 255, 187),
//         activeColor: const Color.fromARGB(255, 9, 119, 33),
//         leftCornerRadius: 32,
//         rightCornerRadius: 32,
//       ),
//     );
//   }

//   Widget buildVegetableCard(String imagePath, String title, String price) {
//     return SingleChildScrollView(
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Card(
//             elevation: 5,
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(10),
//             ),
//             child: ClipRRect(
//               borderRadius: BorderRadius.circular(10),
//               child: Image.asset(
//                 imagePath,
//                 fit: BoxFit.fill,
//                 width: double.infinity,
//                 height: 120,
//               ),
//             ),
//           ),
//           const SizedBox(height: 5),
//           Text(
//             title,
//             style: const TextStyle(
//               fontWeight: FontWeight.bold,
//               fontSize: 20,
//             ),
//           ),
//           const SizedBox(height: 3),
//           Text(
//             price,
//             style: const TextStyle(
//               fontWeight: FontWeight.bold,
//               color: Colors.black,
//               fontSize: 12,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
