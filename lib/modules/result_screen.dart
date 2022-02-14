import 'package:flutter/material.dart';


class ResultScreen extends StatelessWidget {

   final int result;
   final bool isChoosen;
   final int age;
  const ResultScreen(
  {Key? key,
    required this.result,
    required this.isChoosen,
    required this.age,
          }
      ) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('Results',),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            Text('Gender : ${isChoosen == true ? 'Male' : 'Female'} ',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25.0,
            ),
            ),
            Text('Result : $result',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25.0,
              ),
            ),
            Text('Age : $age',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
