import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Container Widget',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Container(
        child: const Text(
          'Hello',
          style: TextStyle(
            color: Colors.red,
          ),
        ),
        //color: Colors.amberAccent,
        margin: const EdgeInsets.all(30),
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          shape: BoxShape.rectangle,
          color: Colors.amberAccent,
        ),
        transform: Matrix4.rotationZ(1 / 6),
      ),
    );
  }
}
