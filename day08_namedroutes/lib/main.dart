import 'package:day08_namedroutes/home.dart';
import 'package:day08_namedroutes/next_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Named Navigation',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/",
      getPages: [
        GetPage(name: "/", page: () => MyApp()),
        GetPage(name: "/home", page: () => Home()),
        GetPage(
          name: "/nextScreen",
          page: () => NextScreen(),
          transition: Transition.leftToRight,
        ),
      ],
      home: Scaffold(
        appBar: AppBar(
          title: const Text("This is the firist page"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  // Get.toNamed('/home');
                  Get.toNamed('/home?channel=Doug Wandas&content=Flutter GetX');
                },
                child: const Text("Go to Home"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
