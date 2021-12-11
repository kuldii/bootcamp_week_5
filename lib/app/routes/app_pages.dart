import 'package:get/get.dart';

import 'package:review_materi/app/modules/detail_user/bindings/detail_user_binding.dart';
import 'package:review_materi/app/modules/detail_user/views/detail_user_view.dart';
import 'package:review_materi/app/modules/home/bindings/home_binding.dart';
import 'package:review_materi/app/modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL_USER,
      page: () => DetailUserView(),
      binding: DetailUserBinding(),
    ),
  ];
}
