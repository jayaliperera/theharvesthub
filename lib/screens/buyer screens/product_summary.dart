// import 'package:flutter/material.dart';
// import 'package:theharvesthub/screens/buyer%20screens/buyer_dashboard.dart';

// class ProductSummary extends StatelessWidget {
//   const ProductSummary({super.key});

//   Widget buildVegetableCard(
//     String imagePath,
//     String productName,
//     String price,
//     String weight,
//   ) {
//     return Card(
//       elevation: 5,
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(10),
//       ),
//       child: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             Image.asset(
//               imagePath,
//               height: 100,
//               fit: BoxFit.cover,
//             ),
//             const SizedBox(height: 10),
//             Text(
//               productName,
//               style: const TextStyle(
//                 fontSize: 18,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             const SizedBox(height: 5),
//             Text(
//               price,
//               style: const TextStyle(
//                 fontSize: 16,
//                 color: Colors.green,
//               ),
//             ),
//             const SizedBox(height: 5),
//             Text(
//               weight,
//               style: const TextStyle(fontSize: 14, color: Colors.grey),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Product Summary"),
//         leading: IconButton(
//           icon: const Icon(Icons.arrow_back),
//           onPressed: () {
//             Navigator.pop(context);
//           },
//         ),
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Center(
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Card(
//                       elevation: 5,
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(10),
//                       ),
//                       child: ClipRRect(
//                         borderRadius: BorderRadius.circular(10),
//                         child: Image.asset(
//                           'assets/images/cabbage.png',
//                           fit: BoxFit.fill,
//                           width: double.infinity,
//                           height: 120,
//                         ),
//                       ),
//                     ),
//                     const SizedBox(height: 5),
//                     const Text(
//                       "Cabbage",
//                       style: TextStyle(
//                         fontWeight: FontWeight.bold,
//                         fontSize: 20,
//                       ),
//                     ),
//                     const SizedBox(height: 3),
//                     const Text(
//                       "LKR 600.00",
//                       style: TextStyle(
//                         fontWeight: FontWeight.bold,
//                         color: Colors.black,
//                         fontSize: 12,
//                       ),
//                     ),
//                     const SizedBox(height: 3),
//                     const Text(
//                       "2 Kg",
//                       style: TextStyle(
//                         color: Colors.grey,
//                         fontSize: 12,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               const SizedBox(height: 20),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   const Text(
//                     "Order placed by",
//                     style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//                   ),
//                   TextButton(
//                     onPressed: () {},
//                     child: const Text("Edit"),
//                   ),
//                 ],
//               ),
//               const Text(
//                 "Jayali Lakna Perera,\nNo. 48/3/2, Heenatikumbura Road,\nBattaramulla",
//                 style: TextStyle(fontSize: 16),
//               ),
//               const SizedBox(height: 10),
//               const Text(
//                 "Confirm your address before you place your order",
//                 style: TextStyle(fontSize: 14, color: Colors.red),
//               ),
//               const SizedBox(height: 20),
//               const Text(
//                 "Special Instructions",
//                 style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//               ),
//               const SizedBox(height: 5),
//               const TextField(
//                 decoration: InputDecoration(
//                   border: OutlineInputBorder(),
//                   hintText:
//                       'Please write any specific instructions to the seller regarding your order',
//                 ),
//                 maxLines: 4,
//               ),
//               const SizedBox(height: 20),
//               const Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text(
//                     "Delivery Charge :",
//                     style: TextStyle(fontSize: 16),
//                   ),
//                   Text(
//                     "300.00",
//                     style: TextStyle(fontSize: 16),
//                   ),
//                 ],
//               ),
//               const SizedBox(height: 10),
//               const Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text(
//                     "Total :",
//                     style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//                   ),
//                   Text(
//                     "900.00",
//                     style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//                   ),
//                 ],
//               ),
//               const SizedBox(height: 20),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   ElevatedButton(
//                     onPressed: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => const BuyerDashboard(),
//                         ),
//                       );
//                     },
//                     style: ElevatedButton.styleFrom(
//                       minimumSize: const Size(150, 50),
//                       backgroundColor: Colors.green,
//                       foregroundColor: Colors.black,
//                     ),
//                     child: const Text(
//                       "Pay Now",
//                       style: TextStyle(fontSize: 18, color: Colors.white),
//                     ),
//                   ),
//                   const SizedBox(width: 20),
//                   OutlinedButton(
//                     onPressed: () {
//                       ScaffoldMessenger.of(context).showSnackBar(
//                         const SnackBar(content: Text("Order Cancelled")),
//                       );
//                     },
//                     style: OutlinedButton.styleFrom(
//                       minimumSize: const Size(150, 50),
//                       side: const BorderSide(color: Colors.green),
//                     ),
//                     child: const Text(
//                       "Cancel Order",
//                       style: TextStyle(fontSize: 18, color: Colors.black),
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
