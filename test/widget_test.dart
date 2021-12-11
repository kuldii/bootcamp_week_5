import 'package:review_materi/app/data/providers/user_provider.dart';

void main() async {
  UserProvider userProv = UserProvider();

  var hasil = await userProv.getAllUsers(3);

  if (hasil == null) {
    print("TIDAK ADA DATA USER");
  } else {
    print("ADA DATA USER\n");
    hasil.forEach((element) {
      print(element.email);
    });
  }
}
