part of 'models.dart';

class User {
  final int id;
  final String name;
  final String email;
  final String password;
  final String picture;

  User({
    this.id,
    this.name,
    this.email,
    this.password,
    this.picture,
  });
}

List<User> mockUser = [
  User(
    id: 1,
    email: 'anggitpp23@gmail.com',
    name: 'Anggit Pangestu Putra',
    password: '123456',
    picture: 'assets/aquarium.jpg',
  ),
];
