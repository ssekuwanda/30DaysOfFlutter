import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Navigation Time"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.toNamed("/home");
              },
              child: const Text("Back to First Screen"),
            ),
            const SizedBox(height: 8),
            Text(
                "Channel name is ${Get.parameters['channel']} and content is ${Get.parameters['content']}"),
          ],
        ),
      ),
    );
  }
}
