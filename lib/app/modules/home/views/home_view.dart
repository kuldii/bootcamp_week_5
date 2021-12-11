import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:review_materi/app/data/models/user_model.dart';
import 'package:review_materi/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeView'),
        centerTitle: true,
      ),
      body: Center(
        child: FutureBuilder(
          future: controller.getData(1),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              if (controller.alluser.length == 0) {
                print("TIDAK ADA DATA USER");
                return Text("TIDAK ADA DATA");
              } else {
                print("ADA DATA USER\n");
                return ListView.builder(
                  itemCount: controller.alluser.length,
                  itemBuilder: (context, index) => ListTile(
                    onTap: () => Get.toNamed(
                      Routes.DETAIL_USER,
                      arguments: controller.alluser[index].id,
                    ),
                    title: Text("${controller.alluser[index].email}"),
                  ),
                );
              }
            } else {
              return CircularProgressIndicator();
            }
          },
        ),
      ),
    );
  }
}
