import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double _value = 18.0; // Initial value

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Set debugShowCheckedModeBanner to false
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 198, 198, 199),
        body: Center(
          child: Card(
            margin: EdgeInsets.all(20),
            elevation: 10,
            child: Padding(
              padding: EdgeInsets.only(bottom: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 40),
                  Text(
                    'Match Making',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF5F3775),
                    ),
                  ),
                  SizedBox(height: 10),
                  Divider(
                    color: Colors.black,
                    height: 1,
                    thickness: 1,
                    indent: 70,
                    endIndent: 70,
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Compatibility Score',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Expanded(
                    child: SizedBox(
                      child: SfRadialGauge(
                        axes: <RadialAxis>[
                          RadialAxis(
                            minimum: 0,
                            maximum: 36,
                            interval: 6,
                            startAngle: 180,
                            endAngle: 0,
                            radiusFactor: 0.5,
                            showLabels: false,
                            ranges: <GaugeRange>[
                              GaugeRange(
                                startValue: 0,
                                endValue: 9,
                                color: Color.fromARGB(255, 212, 120, 163),
                                startWidth: 75,
                                endWidth: 75,
                              ),
                              GaugeRange(
                                startValue: 9,
                                endValue: 18,
                                color: Color.fromARGB(255, 105, 200, 107),
                                startWidth: 75,
                                endWidth: 75,
                              ),
                              GaugeRange(
                                startValue: 18,
                                endValue: 27,
                                color: Color.fromARGB(255, 233, 175, 67),
                                startWidth: 75,
                                endWidth: 75,
                              ),
                              GaugeRange(
                                startValue: 27,
                                endValue: 37,
                                color: Color.fromARGB(255, 112, 148, 194),
                                startWidth: 75,
                                endWidth: 75,
                              ),
                            ],
                            pointers: <GaugePointer>[
                              NeedlePointer(
                                value: _value,
                                needleLength: 0.85,
                                needleStartWidth: 6,
                                needleEndWidth: 6,
                                enableDragging: true,
                                knobStyle: KnobStyle(
                                  knobRadius: 0.10,
                                  color: Color.fromARGB(255, 78, 53, 190),
                                ),
                                onValueChanged: (value) {
                                  setState(() {
                                    _value = value;
                                  });
                                },
                                needleColor: Color.fromARGB(255, 206, 93, 58),
                              ),
                            ],
                            annotations: <GaugeAnnotation>[
                              GaugeAnnotation(
                                widget: RichText(
                                  text: TextSpan(
                                    style: TextStyle(
                                      fontSize: 100,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: '${_value.toStringAsFixed(1)}/',
                                        style: TextStyle(
                                          fontSize: 40,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                      ),
                                      TextSpan(
                                        text: '36',
                                        style: TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                angle: 90,
                                positionFactor: 0.5,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Divider(
                    color: Colors.black,
                    height: 0,
                    thickness: 3,
                    indent: 0,
                    endIndent: 0,
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Details',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
