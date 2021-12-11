import 'package:get/get.dart';

import '../models/user_model.dart';

class UserProvider extends GetConnect {
  Future<List<User>?> getAllUsers(int page) async {
    var response = await get("https://reqres.in/api/users?page=$page");

    List listMapUsers = response.body["data"];

    if (listMapUsers.length == 0) return null;

    return listMapUsers.map((e) => User.fromJson(e)).toList();
  }

  Future<User?> getUser(int id) async {
    var response = await get("https://reqres.in/api/users/$id");

    return User.fromJson(response.body["data"]);
  }
}
