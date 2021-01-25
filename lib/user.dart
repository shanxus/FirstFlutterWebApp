class User {
  String name;
  String avatarPath;

  User.test(String name) {
    this.name = name;
  }
}

class UserUtils {
  static final UserUtils _singleton = UserUtils._internal();

  factory UserUtils() {
    return _singleton;
  }

  UserUtils._internal();

  List<User> testUsers() {
    var users = [];
    users.add(User.test("name"));
    return users;
  }
}