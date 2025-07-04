// core/services/database_services.dart

abstract class DatabaseServices{

  Future<void>addData({required String collectionName,required Map<String,dynamic>data ,String? documentId});
  Future<dynamic>getData({required String path,
   String ?documentId,
   Map<String,dynamic>?query
   });

   Future<void>addToCart({required String collectionName,required  Map<String,dynamic>data, required String docId});
 }