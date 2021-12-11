import 'package:get/get.dart';
import 'package:review_materi/app/data/models/user_model.dart';
import 'package:review_materi/app/data/providers/user_provider.dart';

class DetailUserController extends GetxController {
  Future<User?> getSingleUser(int id) async {
    UserProvider userProv = UserProvider();

    return await userProv.getUser(id);
  }
}
