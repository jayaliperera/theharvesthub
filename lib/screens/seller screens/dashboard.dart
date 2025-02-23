// import 'package:flutter/material.dart';
// import 'package:theharvesthub/screens/seller%20screens/product_listing.dart';

// class Dashboard extends StatelessWidget {
//   const Dashboard({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white, // Background color set to white
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               // Header with only the logo
//               const SizedBox(height: 16),
//               Center(
//                 child: Image.asset(
//                   'assets/images/logo.png', // Path to your logo image
//                   height: 80,
//                 ),
//               ),
//               const SizedBox(height: 16),
//               const Text(
//                 'Welcome Rithmi,',
//                 style: TextStyle(
//                   fontSize: 24,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               const SizedBox(height: 16),
//               Container(
//                 decoration: BoxDecoration(
//                   border: Border.all(
//                     color: Colors.green, // Border color
//                     width: 4, // Border width
//                   ),
//                   borderRadius: BorderRadius.circular(12), // Rounded corners
//                 ),
//                 child: ClipRRect(
//                   borderRadius: BorderRadius.circular(
//                       12), // Match the container's borderRadius
//                   child: Image.asset(
//                     'assets/images/farmer.jpg', // Path to your farmer image
//                     height: 150,
//                     width: 150,
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 32),
//               CustomButton(
//                 label: 'PRODUCT LISTING',
//                 onPressed: () {
//                   // Navigate to PRODUCT LISTING
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) => const product_listing(),
//                     ),
//                   );
//                 },
//               ),

//               CustomButton(
//                 label: 'AUCTION',
//                 onPressed: () {
//                   // Navigate to AuctionProductUI
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) => const AuctionProductUI(),
//                     ),
//                   );
//                 },
//               ),
//               CustomButton(label: 'ORDER HISTORY', onPressed: () {}),
//               CustomButton(label: 'AUCTION HISTORY', onPressed: () {}),
//             ],
//           ),
//         ),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         selectedItemColor: Colors.green,
//         items: const [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.notifications),
//             label: 'Notification',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.person),
//             label: 'Profile',
//           ),
//         ],
//       ),
//     );
//   }
// }

// class CustomButton extends StatelessWidget {
//   final String label;
//   final VoidCallback onPressed;

//   const CustomButton({
//     super.key,
//     required this.label,
//     required this.onPressed,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 8.0),
//       child: ElevatedButton(
//         style: ElevatedButton.styleFrom(
//           backgroundColor: Colors.green,
//           padding: const EdgeInsets.symmetric(vertical: 16),
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(30), // Fully rounded buttons
//           ),
//         ),
//         onPressed: onPressed,
//         child: Center(
//           child: Text(
//             label,
//             style: const TextStyle(
//               fontSize: 18,
//               color: Colors.white,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// // AuctionProductUI widget
// class AuctionProductUI extends StatelessWidget {
//   const AuctionProductUI({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white, // Background color set to white
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             const SizedBox(height: 16),
//             Center(
//               child: Image.asset(
//                 'assets/images/logo.png', // Path to your logo image
//                 height: 60,
//               ),
//             ),
//             const SizedBox(height: 16),
//             const Text(
//               "Photos",
//               style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//             ),
//             const SizedBox(height: 8),
//             const Text(
//               "Only 3 photos are required and the first picture will be displayed",
//               style: TextStyle(fontSize: 14, color: Colors.grey),
//             ),
//             const SizedBox(height: 16),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: List.generate(
//                 3,
//                 (index) => Container(
//                   width: 100,
//                   height: 100,
//                   decoration: BoxDecoration(
//                     color: Colors.grey[300],
//                     borderRadius:
//                         BorderRadius.circular(12.0), // Rounded corners
//                   ),
//                   child: const Icon(Icons.add_a_photo, color: Colors.grey),
//                 ),
//               ),
//             ),
//             const SizedBox(height: 16),
//             const TextField(
//               decoration: InputDecoration(
//                 labelText: "Title",
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.all(
//                     Radius.circular(12), // Rounded corners
//                   ),
//                 ),
//               ),
//             ),
//             const SizedBox(height: 16),
//             const TextField(
//               decoration: InputDecoration(
//                 labelText: "Pricing",
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.all(
//                     Radius.circular(12), // Rounded corners
//                   ),
//                 ),
//               ),
//               keyboardType: TextInputType.number,
//             ),
//             const SizedBox(height: 16),
//             const TextField(
//               decoration: InputDecoration(
//                 labelText: "Start bit price",
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.all(
//                     Radius.circular(12), // Rounded corners
//                   ),
//                 ),
//               ),
//               keyboardType: TextInputType.number,
//             ),
//             const SizedBox(height: 16),
//             const TextField(
//               decoration: InputDecoration(
//                 labelText: "Product quantity",
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.all(
//                     Radius.circular(12), // Rounded corners
//                   ),
//                 ),
//               ),
//               keyboardType: TextInputType.number,
//             ),
//             const SizedBox(height: 32),
//             Center(
//               child: ElevatedButton(
//                 onPressed: () {
//                   // Add functionality for submission
//                 },
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Colors.green,
//                   padding: const EdgeInsets.symmetric(
//                     vertical: 12,
//                     horizontal: 40,
//                   ),
//                   shape: RoundedRectangleBorder(
//                     borderRadius:
//                         BorderRadius.circular(12.0), // Rounded corners
//                   ),
//                 ),
//                 child: const Text(
//                   'ALL DONE',
//                   style: TextStyle(color: Colors.white, fontSize: 16),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
