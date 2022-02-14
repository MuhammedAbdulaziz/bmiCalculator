import 'dart:math';
import 'package:bmi_calculator/modules/result_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double height = 120.0;
  int age = 0;
  double weight = 40.0;
  bool isChoosen = true;
  Color? color = Colors.grey[400];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text(
          'BMI CALCULATOR',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: ()
                      {
                        setState(() {
                          isChoosen = true;
                        });
                      },
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const[
                            Icon(
                              Icons.male,
                              size: 100.0,
                            ),
                          /*  Image(
                              image: AssetImage('images/male.png'),
                              width: 100.0,
                              height: 100.0,
                            ),*/
                            SizedBox(
                              height: 15.0,
                            ),
                            Text(
                                'Male',
                            style: TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                            ),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius:BorderRadius.circular(10.0),
                          color: isChoosen? Colors.grey : Colors.black38,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          isChoosen = false;
                        });
                      },
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.female,
                              size: 100.0,
                            ),
                           /* Image(
                              image: AssetImage('images/female.png'),
                              width: 100.0,
                              height: 100.0,
                            ),*/
                            SizedBox(
                              height: 15.0,
                            ),
                            Text(
                              'Female',
                              style: TextStyle(
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius:BorderRadius.circular(10.0),
                          color: !isChoosen ? Colors.grey : Colors.black26,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   const Text(
                     'Height',
                     style: TextStyle(
                       fontSize: 25.0,
                       fontWeight: FontWeight.bold,
                     ),
                   ),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     crossAxisAlignment: CrossAxisAlignment.baseline,
                     textBaseline:TextBaseline.alphabetic,
                     children: [
                       Text(
                         '${height.round()}',
                         style: const TextStyle(
                           fontSize: 40.0,
                           fontWeight: FontWeight.w900,
                         ),
                       ),
                       const Text(
                         'CM',
                         style: TextStyle(
                           fontSize: 20.0,
                           fontWeight: FontWeight.bold,
                         ),
                       ),
                     ],
                   ),
                   Slider(
                       value: height,
                       max: 220.0,
                       min: 80.0,
                       onChanged: (value)
                       {
                         setState(() {
                           height = value;
                         });
                       }),
                 ],
                ),
                decoration: BoxDecoration(
                  borderRadius:BorderRadius.circular(10.0),
                  color: Colors.black54,
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      child: Column(
                        mainAxisAlignment:MainAxisAlignment.center,
                        children: [
                          const Text(
                            'WEIGHT',
                            style: TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '${weight.round()}',
                            style: const TextStyle(
                              fontSize: 40.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                  onPressed: (){
                                    setState(() {
                                      weight == 40 ? weight : {weight--};
                                    });
                                  },
                                  heroTag: 'weight--',
                                  mini: true,
                                  child: const Icon(Icons.remove),
                              ),
                              FloatingActionButton(
                                onPressed: (){
                                  setState(() {
                                    weight++;
                                  });
                                },
                                heroTag: 'weight++',
                                mini: true,
                                child: const Icon(Icons.add),
                              ),
                            ],
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        borderRadius:BorderRadius.circular(10.0),
                        color: Colors.black38,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10.0,),
                  Expanded(
                    child: Container(
                      child: Column(
                        mainAxisAlignment:MainAxisAlignment.center,
                        children: [
                          const Text(
                            'AGE',
                            style: TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '$age',
                            style: const TextStyle(
                              fontSize: 40.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                onPressed: (){
                                  setState(() {
                                    age == 0 ? age: {age--};
                                  });
                                },
                                heroTag: 'age--',
                                mini: true,
                                child: const Icon(Icons.remove),
                              ),
                              FloatingActionButton(
                                onPressed: (){
                                  setState(() {
                                  age++;
                                }
                                    );
                                  },
                                heroTag: 'age++',
                                mini: true,
                                child: const Icon(Icons.add),
                              ),
                            ],
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        borderRadius:BorderRadius.circular(10.0),
                        color: Colors.black38,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            color: Colors.blueGrey,
            child: MaterialButton(
              height: 50.0,
              onPressed: ()
              {
                var result = weight / pow((height / 100),2);


                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context)=> ResultScreen(
                        result: result.round(),
                        isChoosen: isChoosen,
                        age:age,
                      ),
                  ),
                );
              },
              child: const Text(
                'Calculate',
              style: TextStyle(
                color: Colors.white,
              ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
