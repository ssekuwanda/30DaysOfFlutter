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
      title: 'Snackbar',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Snack Bar'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Get.snackbar(
                    "Snackbar title",
                    "This is a message",
                    snackPosition: SnackPosition.BOTTOM,
                    titleText: const Text(
                      "Another Title",
                    ),
                    messageText: const Text(
                      "Another Message",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  );
                },
                child: const Text(
                  "Show snackbar",
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
