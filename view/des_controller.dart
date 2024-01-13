import 'package:cloud_firestore/cloud_firestore.dart';

class AlleventsController {
  Stream<QuerySnapshot> getAlleventsStream() {
    return FirebaseFirestore.instance.collection('categories').snapshots();
  }
}