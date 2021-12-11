import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:review_materi/app/data/models/user_model.dart';

import '../controllers/detail_user_controller.dart';

class DetailUserView extends GetView<DetailUserController> {
  int iduser = Get.arguments as int;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('USER ID : $iduser'),
        centerTitle: true,
      ),
      body: Center(
        child: FutureBuilder<User?>(
          future: controller.getSingleUser(iduser),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) return CircularProgressIndicator();
            if (snapshot.data == null) {
              return Text("TIDAK ADA DETAIL DATA USER");
            }
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(snapshot.data!.avatar!),
                  ),
                  Text(
                    'NAMA : ${snapshot.data!.firstName} ${snapshot.data!.lastName}',
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    'EMAIL : ${snapshot.data!.email}',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
