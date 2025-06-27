// furniture/home/domain/buttom_navigation_bar_entity.dart
class ButtomNavigationBarEntity {
 final String activeImage; 
  final String inactiveImage; 
  final String name;

  ButtomNavigationBarEntity({required this.activeImage, required this.inactiveImage, required this.name});


}
List<ButtomNavigationBarEntity> get buttomNavigationBar=>[
ButtomNavigationBarEntity(
  activeImage: 'assets/images/activeHome.svg', 
  inactiveImage: 'assets/images/inactive_home.svg',
   name: 'Home'),
   ButtomNavigationBarEntity(activeImage: 'assets/images/active_Categories.svg',
    inactiveImage: 'assets/images/inactive_categories.svg', 
    name: 'Categories'),
    ButtomNavigationBarEntity(activeImage: 'assets/images/active_wishlist.svg',
     inactiveImage: 'assets/images/inActive_wishlist.svg',
      name: 'Wishlist'),
      ButtomNavigationBarEntity(activeImage: 'assets/images/active_cart.svg',
       inactiveImage: 'assets/images/inactive_cart.svg', 
       name: 'Cart'),
       ButtomNavigationBarEntity(
        activeImage: 'assets/images/active_user.svg', 
       inactiveImage: 'assets/images/inactive_user.svg',
        name: 'Profile')

   
   
   ];