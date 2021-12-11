import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeView'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () => controller.reset(),
            icon: Icon(Icons.refresh),
          ),
        ],
      ),
      body: GetBuilder<HomeController>(
        builder: (c) {
          return Center(
            child: c.imageGallery == null
                ? Text("BELUM MEMILIH GAMBAR")
                : ClipOval(
                    child: Container(
                      width: 100,
                      height: 100,
                      child: Image.file(
                        c.imageGallery!,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => controller.ambilGambar(),
      ),
    );
  }
}
