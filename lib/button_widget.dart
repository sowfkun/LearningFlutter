import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var styleUseVariable = ButtonStyle(
      foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
      //backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
      padding: MaterialStateProperty.all<EdgeInsets>(
        const EdgeInsets.all(10),
      ),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: const BorderSide(color: Colors.red),
        ),
      ),
    );

    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              Container(
                child: TextButton(
                  child: const Text(
                    'Text Button',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                  onPressed: () {},
                ),
                margin: const EdgeInsets.all(10),
              ),
              Container(
                child: ElevatedButton(
                  child: const Icon(
                    Icons.cloud_upload,
                    size: 50,
                  ),
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.red),
                    overlayColor: MaterialStateProperty.all<Color>(Colors.red),
                    // to hide overlay effect, set the same color with backgroundcolor
                    elevation: MaterialStateProperty.all<double>(30), // shadow
                  ),
                ),
                margin: const EdgeInsets.all(10),
              ),
              Container(
                child: OutlinedButton(
                  child: const Text('Text Button'),
                  onPressed: () {},
                  style: styleUseVariable,
                ),
                margin: const EdgeInsets.all(10),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
