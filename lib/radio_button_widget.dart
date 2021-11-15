import 'package:flutter/material.dart';

class RadioButtonWidget extends StatefulWidget {
  const RadioButtonWidget({Key? key}) : super(key: key);

  @override
  State<RadioButtonWidget> createState() => _RadioButtonWidgetState();
}
// difference between RadioListTitle and ListTitle
// RadioListtitle can be select by clicking anywhere
// ListTitle can only be select by clicking the button

class _RadioButtonWidgetState extends State<RadioButtonWidget> {
  String _currentGender = 'Male';

  void setGender(Object? value) {
    setState(() {
      _currentGender = value.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Radio Button'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RadioListTile(
              title: const Text('Male'),
              subtitle: const Text('Nam'),
              secondary: const Icon(Icons.male),
              value: 'Male',
              groupValue: _currentGender,
              onChanged: setGender,
              selectedTileColor: Colors.amber,
              selected: false,
              activeColor: Colors.red,
              shape: Border.all(width: 0.5, color: Colors.red),
            ),
            ListTile(
              title: const Text('Female'),
              subtitle: const Text('Nữ'),
              trailing: const Icon(Icons.female),
              leading: Radio(
                value: 'Female',
                groupValue: _currentGender,
                onChanged: setGender,
              ),
              selectedTileColor: Colors.amber,
              selected: false,
            ),
          ],
        ),
      ),
    );
  }
}
