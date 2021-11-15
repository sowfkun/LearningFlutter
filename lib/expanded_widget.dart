import 'package:flutter/material.dart';

class ExpandedWidget extends StatelessWidget {
  const ExpandedWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                ChildContainer(), // default size,
                Expanded(
                    flex: 1,
                    child: ChildContainer()), // 1 weight in the rest part
                Expanded(
                    flex: 2,
                    child: ChildContainer()), // 2 weight int the rest part
              ]),
        ),
      ),
    );
  }
}

class ChildContainer extends StatelessWidget {
  const ChildContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      color: Colors.red,
      margin: const EdgeInsets.all(5),
    );
  }
}
