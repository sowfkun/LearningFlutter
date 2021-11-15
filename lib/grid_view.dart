import 'package:flutter/material.dart';

class GridViewWidget extends StatelessWidget {
  const GridViewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Grid view'),
        ),
        body: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 20,
            mainAxisSpacing: 10,
          ),
          children: [
            for (var i = 0; i < 50; i++)
              Image.network('https://picsum.photos/536/354')
          ],
          padding: const EdgeInsets.all(10),
          scrollDirection: Axis.vertical,
          //physics: const NeverScrollableScrollPhysics(), // non-scrollable
          // scroll effect at the end
          // physics: const ClampingScrollPhysics(),
          // physics: const BouncingScrollPhysics(),
          shrinkWrap: true,
        ),
      ),
    );
  }
}
