// core/services/database_services.dart
 abstract class DatabaseServices{

  Future<void>addData({required String collectionName,required Map<String,dynamic>data});
 }