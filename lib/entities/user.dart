part of 'entities.dart';

@Entity()
class User {
  int id;

  String name;
  String age;
  String gender;

  User({this.id = 0, required this.name, required this.age, required this.gender});
}