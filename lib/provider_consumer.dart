import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

enum genderEnum { male, female }
enum degreeEnum { caodang, daihoc }

class Gender extends ChangeNotifier {
  genderEnum _gender = genderEnum.male;

  genderEnum get gender => _gender;

  set setGender(genderEnum value) {
    _gender = value;
    notifyListeners();
  }
}

class Degree extends ChangeNotifier {
  degreeEnum _degree = degreeEnum.caodang;

  degreeEnum get degree => _degree;

  set setdegree(degreeEnum value) {
    _degree = value;
    notifyListeners();
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Provider Consumer')),
      body: Consumer2<Gender, Degree>(
        builder: (context, genderInfo, degreeInfo, child) {
          return Column(
            children: [
              const Text('Gender'),
              RadioListTile<genderEnum>(
                title: const Text('Nam'),
                secondary: const Icon(Icons.male),
                value: genderEnum.male,
                groupValue: genderInfo.gender,
                onChanged: (value) {
                  genderInfo.setGender = value!;
                },
              ),
              RadioListTile<genderEnum>(
                title: const Text('Nữ'),
                secondary: const Icon(Icons.female),
                value: genderEnum.female,
                groupValue: genderInfo.gender,
                onChanged: (value) {
                  genderInfo.setGender = value!;
                },
              ),
              const Text('Degree'),
              RadioListTile<degreeEnum>(
                title: const Text('Cao đẳng'),
                value: degreeEnum.caodang,
                groupValue: degreeInfo.degree,
                onChanged: (value) {
                  degreeInfo.setdegree = value!;
                },
              ),
              RadioListTile<degreeEnum>(
                title: const Text('Đại học'),
                value: degreeEnum.daihoc,
                groupValue: degreeInfo.degree,
                onChanged: (value) {
                  degreeInfo.setdegree = value!;
                },
              ),
              const Divider(
                height: 100,
              ),
              Center(
                child: Text(
                    'Thông tin cá nhân: ${genderInfo.gender} , ${degreeInfo.degree}'),
              )
            ],
          );
        },
      ),
    );
  }
}
