part of 'repositories.dart';

class UserRepository {
  final Store store;

  UserRepository({required this.store});

  int addOrUpdateUser(User user) {
    return store.box<User>().put(user);
  }

  User? getUserById(int id) {
    return store.box<User>().get(id);
  }

  User? getUserByName(String name) {
    List<User> users = store.box<User>().query(User_.name.equals(name)).build().find();

    if(users.isNotEmpty) {
      return users.first;
    } else {
      return null;
    }
  }

  User? getUserByAge(String age) {
    List<User> users = store.box<User>().query(User_.age.equals(age)).build().find();

    if(users.isNotEmpty) {
      return users.first;
    } else {
      return null;
    }
  }
}