part of 'models.dart';

class Categories {
  final int id;
  final String name;
  final String picture;

  Categories(this.id, this.name, {this.picture});
}

List<Categories> mockCategories = [
  Categories(
    1,
    'Smart Device',
    picture: 'icon-bulb.png',
  ),
  Categories(
    2,
    'Aquarium Kaca',
    picture: 'icon-aquarium.png',
  ),
];
