part of 'models.dart';

class Products {
  final int id;
  final User user;
  final String name;
  final String description;
  final int stock;
  final int purchasePrice;
  final int sellingPrice;
  final String picture;

  Products(
      {this.id,
      this.user,
      this.name,
      this.description,
      this.stock,
      this.purchasePrice,
      this.sellingPrice,
      this.picture});
}

List<Products> mockProducts = [
  Products(
      id: 1,
      user: mockUser[0],
      name: 'Bardi Smart Bulb 9W With RGB 16 Million Color',
      description: 'Smart bulb bardi dengan watt 9',
      purchasePrice: 99900,
      sellingPrice: 109900,
      stock: 20,
      picture: 'bulb.jpg'),
  Products(
      id: 2,
      user: mockUser[0],
      name: 'Aquarium Kaca Bali Ukuran L',
      description: 'Aquarium ukuran L',
      purchasePrice: 40000,
      sellingPrice: 79900,
      stock: 50,
      picture: 'aquarium.jpg'),
  Products(
      id: 3,
      user: mockUser[0],
      name: 'Aquarium Kaca Bali Ukuran XL',
      description: 'Aquarium ukuran XL',
      purchasePrice: 50000,
      sellingPrice: 109900,
      stock: 100,
      picture: 'aquarium.jpg'),
  Products(
      id: 4,
      user: mockUser[0],
      name: 'Bardi Smart Breaker Automatic WiFi Saklar',
      description: 'Smart breaker by bardi',
      purchasePrice: 49900,
      sellingPrice: 65000,
      stock: 5,
      picture: 'breaker.jpg'),
];
