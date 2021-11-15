import 'package:flutter/material.dart';

class WrapWidget extends StatelessWidget {
  const WrapWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Wrap(
              //alignment: WrapAlignment.center,
              //alignment: WrapAlignment.spaceBetween,
              alignment: WrapAlignment.start,

              //direction: Axis.horizontal,
              direction: Axis.vertical,
              runSpacing: 50, // space between columns or rows
              children: const [
                ChildContainer(),
                ChildContainer(),
                ChildContainer(),
                ChildContainer(),
                ChildContainer(),
                ChildContainer(),
                ChildContainer(),
                ChildContainer(),
                ChildContainer(),
                ChildContainer(),
                ChildContainer(),
                ChildContainer(),
                ChildContainer(),
                ChildContainer(),
                ChildContainer(),
                ChildContainer(),
                ChildContainer(),
                ChildContainer(),
                ChildContainer(),
                ChildContainer(),
                ChildContainer(),
                ChildContainer(),
                ChildContainer(),
                ChildContainer(),
                ChildContainer(),
                ChildContainer(),
                ChildContainer(),
                ChildContainer(),
                ChildContainer(),
                ChildContainer(),
                ChildContainer(),
                ChildContainer(),
                ChildContainer(),
                ChildContainer(),
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
