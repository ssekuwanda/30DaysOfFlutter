import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Navigation'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () async {
                  // Get.to(
                  //   Home(),
                  //   fullscreenDialog: true,
                  //   transition: Transition.zoom,
                  //   // duration: const Duration(milliseconds: 4000),
                  //   curve: Curves.bounceOut,
                  // );

                  // Get.to(const Home(), arguments: "Data from Main");
                  // var data = await Get.to(
                  //   Home(),
                  // );
                  // print("The Received data is $data");
                },
                child: const Text("Go Home"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
