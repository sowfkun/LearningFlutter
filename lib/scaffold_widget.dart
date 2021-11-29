import 'package:flutter/material.dart';

class ScaffoldWidget extends StatelessWidget {
  const ScaffoldWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.amber,
        appBar: AppBar(
          //title
          title: const Text('Scaffold Widget'),
          centerTitle: true,
          foregroundColor: Colors.red,
          backgroundColor: Colors.green,
          //leading will cover left drawer
          leading: Builder(
            builder: (context) => IconButton(
              icon: const Icon(Icons.face),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            ),
          ),

          //actions will cover left drawer
          actions: [
            Builder(
              builder: (context) => IconButton(
                icon: const Icon(Icons.face),
                onPressed: () {
                  Scaffold.of(context).openEndDrawer();
                },
              ),
            )
          ],
        ),
        drawer: Drawer(
          // left drawer
          child: Builder(
            builder: (context) => ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('hide'),
            ),
          ),
        ),
        endDrawer: Drawer(
          // right drawer
          child: Builder(
            builder: (context) => ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('hide'),
            ),
          ),
        ),
        body: const Center(
          child: Text('Hello'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(
            Icons.share,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          child: Container(
            height: 50,
          ),
        ),
      ),
    );
  }
}
