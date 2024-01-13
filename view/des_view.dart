// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:url_launcher/url_launcher.dart';
//
// import '../controller/FavoriteController/favConrollerNew.dart';
// import '../controller/cartController.dart';
// import '../controller/desciption_controller.dart';
// import '../model/FavoriteModel/favoriteModel2.dart';
// import '../model/description_model.dart';
// import '../screen/booking_page/booking.dart';
// import 'des_controller.dart';
// class DescriptionPage extends StatefulWidget {
//   const DescriptionPage({Key? key}) : super(key: key);
//
//   @override
//   State<DescriptionPage> createState() => _DescriptionPageState();
// }
// class _DescriptionPageState extends State<DescriptionPage> {
//   late List<QueryDocumentSnapshot<Object?>> data;
//   Map<int, int> selectedImageIndices = {};
//   final DescriptionController descriptionController =
//   Get.put(DescriptionController());
//   final FavoritrController2 _favorite2Controller =
//   Get.find<FavoritrController2>();
//   final FavController favController = FavController();
//   late User? user;
//
//   @override
//   void initState() {
//     super.initState();
//     user = FirebaseAuth.instance.currentUser;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Event Details'),
//       ),
//       body: StreamBuilder<QuerySnapshot>(
//         stream: AlleventsController().getAlleventsStream(),
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return CircularProgressIndicator();
//           } else if (snapshot.hasError) {
//             return Text('Error: ${snapshot.error}');
//           } else if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
//             return Text('No events found');
//           } else {
//             data = snapshot.data!.docs.cast<QueryDocumentSnapshot<Object?>>();
//
//             return ListView.builder(
//               itemCount: data.length,
//               itemBuilder: (context, index) {
//                 // Get the document ID
//                 String documentId = data[index].id;
//
//                 // Your UI components based on the document ID
//                 return Column(
//                   children: [
//                     Text('Document ID: $documentId'),
//                     // Your additional UI components based on the data
//                   ],
//                 );
//               },
//             );
//           }
//         },
//       ),
//     );
//   }
// }
//
//
// class CategoryModel {
//   String categoryName;
//   List<dynamic> categoryData; // This may be causing the issue
//
//   CategoryModel({
//     required this.categoryName,
//     required this.categoryData,
//   });
//
//   factory CategoryModel.fromSnapshot(DocumentSnapshot<Map<String, dynamic>> snapshot) {
//     // Extract data from the snapshot
//     String categoryName = snapshot.get('categoryName');
//     List<dynamic> categoryData = snapshot.get('categoryData');
//
//     return CategoryModel(
//       categoryName: categoryName,
//       categoryData: categoryData,
//     );
//   }
// }
