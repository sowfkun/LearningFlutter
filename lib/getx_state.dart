import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetX extends StatelessWidget {
  var count = 0.obs;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Getx state'),
        ),
        body: Center(
          child: Obx(
            () => Text(
              '$count',
              style: const TextStyle(fontSize: 50),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            count++;
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
