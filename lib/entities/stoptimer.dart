part of 'entities.dart';

@Entity()
class StopTimer {
  int id;

  String elapsedTime;
  int elapsedDays;
  String alasan;

  ToOne<User> user = ToOne<User>();

  StopTimer({this.id = 0, required this.elapsedTime, required this.elapsedDays, required this.alasan});
}