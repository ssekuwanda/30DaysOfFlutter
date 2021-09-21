import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigation'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text("This is a Home Screen"),
            ElevatedButton(
              onPressed: () {
                Get.back(result: "This is from the Home Screen");
              },
              child: const Text("Back"),
            ),
            Text("${Get.arguments}"),
          ],
        ),
      ),
    );
  }
}
