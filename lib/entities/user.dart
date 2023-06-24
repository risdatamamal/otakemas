part of 'entities.dart';

@Entity()
class User {
  int id;

  String name;
  String age;
  String gender;

  @Backlink("user")
  ToMany<StopTimer> stopTimer = ToMany<StopTimer>();

  User({this.id = 0, required this.name, required this.age, required this.gender});
}