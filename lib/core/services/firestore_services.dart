// core/services/firestore_services.dart
import 'package:bag_store_ecommerec/core/services/database_services.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreServices implements  DatabaseServices{
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  @override
  Future<void> addData({required String collectionName, required Map<String, dynamic> data})async {
     await firestore.collection(collectionName).add(data);
    
  }



}


