// furniture/home/domain/entites/brand_entity.dart
class BrandEntity {
  final String path;
  final String brandName;

  BrandEntity({required this.path, required this.brandName});
}
List<BrandEntity>items=[
  BrandEntity(path: 'assets/images/Hermes.svg', brandName: 'Hermès'),
  BrandEntity(path: 'assets/images/chanel.svg', brandName: 'Chanel'),
  BrandEntity(path: 'assets/images/Prada.svg', brandName: 'Prada'),
  BrandEntity(path: 'assets/images/Louis vuitton.svg', brandName: 'Louis Vuitton')

];