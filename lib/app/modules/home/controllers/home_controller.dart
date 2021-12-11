import 'package:get/get.dart';
import 'package:review_materi/app/data/models/user_model.dart';
import 'package:review_materi/app/data/providers/user_provider.dart';

class HomeController extends GetxController {
  RxList<User> alluser = List<User>.empty().obs;

  Future<void> getData(int page) async {
    UserProvider userProv = UserProvider();

    List<User>? data = await userProv.getAllUsers(page);

    if (data != null) {
      alluser.clear();
      data.forEach((element) {
        alluser.add(element);
      });

      alluser.refresh();
    }
  }
}
