import 'package:faker/faker.dart';

import '../user/user.dart';

class UsersManager {
  static final Map<int, User> _cache = {};

  UsersManager();

  static getUserById(int? id) {
    if (id == null || id < 0) return null;
    if (_cache.containsKey(id)) {
      return _cache[id]!;
    }
    Map<String, dynamic> userJson = {};
    userJson = {
      "id": id,
      "first_name": faker.person.firstName(),
      "last_name": faker.person.lastName(),
      "about": faker.lorem.words(3).join(' '),
      "image": faker.image.image(),
      "email": faker.internet.email(),
    };
    User user = User.fromJson(userJson);
    _cache[id] = user;
    return user;
  }
}
