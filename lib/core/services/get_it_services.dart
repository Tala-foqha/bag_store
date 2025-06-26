// core/services/get_it_services.dart
import 'package:bag_store_ecommerec/core/services/database_services.dart';
import 'package:bag_store_ecommerec/core/services/fire_base_auth_services.dart';
import 'package:bag_store_ecommerec/core/services/firestore_services.dart';
import 'package:bag_store_ecommerec/furniture/auth/data/repos/auth_repo_impl.dart';
import 'package:bag_store_ecommerec/furniture/auth/domain/repos/auth_repo.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<FirebaseAuuthServices>(FirebaseAuuthServices());
    getIt.registerSingleton<DatabaseServices>(FirestoreServices());

  getIt.registerSingleton<AuthRebo>(
 AuthRepoImpl(
  databaseServices: getIt<DatabaseServices>(),
  firebaseAuuthServices: getIt<FirebaseAuuthServices>(), 
 
 
 )
 );

}