import 'package:flutter/material.dart';

class SnackBarWidget extends StatelessWidget {
  SnackBarWidget({Key? key}) : super(key: key);
  final _messKey = GlobalKey<ScaffoldMessengerState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scaffoldMessengerKey: _messKey,
      home: Scaffold(
        body: const Center(
          child: Text('Hello'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            var mySnackBar = const SnackBar(
              content: Text('aaaaaaaa'),
              duration: Duration(milliseconds: 2000),
            );
            _messKey.currentState!.showSnackBar(mySnackBar);
          },
          child: const Icon(Icons.alarm),
        ),
      ),
    );
  }
}

// method 2

// class SnackBarWidget extends StatelessWidget {
//   const SnackBarWidget({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: MySnackBar(),
//     );
//   }
// }

// class MySnackBar extends StatelessWidget {
//   const MySnackBar({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: const Center(
//         child: Text('Hello'),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           var mySnackBar = const SnackBar(
//             content: Text('baaaaaaa'),
//             duration: Duration(milliseconds: 3000),
//             backgroundColor: Colors.amberAccent,
//           );
//           ScaffoldMessenger.of(context).showSnackBar(mySnackBar);
//         },
//         child: const Icon(Icons.alarm),
//       ),
//     );
//   }
// }
