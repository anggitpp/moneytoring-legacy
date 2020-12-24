part of 'models.dart';

class Transactions {
  final int id;
  final Products products;
  final User user;
  final int category;
  final DateTime date;
  final int purchasePrice;
  final int sellingPrice;
  final int quantity;
  final String fee;
  final int discount;
  final int margin;

  Transactions(
      {this.id,
      this.products,
      this.user,
      this.category,
      this.date,
      this.purchasePrice,
      this.sellingPrice,
      this.quantity,
      this.fee,
      this.discount,
      this.margin});
}

List<Transactions> mockTransactions = [
  Transactions(
    id: 1,
    products: mockProducts[0],
    user: mockUser[0],
    category: 1,
    date: DateTime.now(),
    purchasePrice: mockProducts[0].purchasePrice,
    sellingPrice: mockProducts[0].sellingPrice,
    quantity: 1,
    fee: '2000',
    discount: 5000,
    margin: 38000,
  ),
  Transactions(
    id: 2,
    products: mockProducts[1],
    user: mockUser[0],
    category: 1,
    date: DateTime.now(),
    purchasePrice: mockProducts[0].purchasePrice,
    sellingPrice: mockProducts[0].sellingPrice,
    quantity: 1,
    fee: '2000',
    discount: 5000,
    margin: 38000,
  ),
  Transactions(
    id: 3,
    products: mockProducts[0],
    user: mockUser[0],
    category: 1,
    date: DateTime.now(),
    purchasePrice: mockProducts[0].purchasePrice,
    sellingPrice: mockProducts[0].sellingPrice,
    quantity: 1,
    fee: '2000',
    discount: 5000,
    margin: 38000,
  ),
];
