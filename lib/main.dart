import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

List days = [
  "Sunday",
  "Monday",
  "Tuesday",
  "Wednesday",
  "Thursday",
  "Friday",
  "Saturday",
];

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              _todaysTempreture(),
              SizedBox(
                height: 50,
              ),
              _statusBar(),
              SizedBox(
                height: 50,
              ),
              _todaysWeather(),
              SizedBox(
                height: 50,
              ),
              _upcomingWeather(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _todaysTempreture() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("San Fransisco"),
              SizedBox(
                height: 10,
              ),
              Text(
                "18℃",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white24),
                child: Text("Cloudy"),
              )
            ],
          ),
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
                color: Colors.orange[600],
                borderRadius: BorderRadius.circular(100)),
          ),
        ],
      ),
    );
  }

  Widget _statusBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Icon(Icons.watch),
            SizedBox(
              width: 4,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Humidity",
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "13%",
                ),
              ],
            ),
          ],
        ),
        Row(
          children: [
            Icon(Icons.adjust_sharp),
            SizedBox(
              width: 4,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Pressure",
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "0.583 mBar",
                ),
              ],
            ),
          ],
        ),
        Row(
          children: [
            Icon(Icons.all_inclusive_rounded),
            SizedBox(
              width: 4,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Wind Speed",
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "9km/h",
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Widget _todaysWeather() {
    return Container(
      height: 100,
      child: ListView.separated(
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        itemCount: 7,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("${index + 5} AM"),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.orange[600]),
              ),
              SizedBox(
                height: 10,
              ),
              Text("18℃")
            ],
          );
        },
        separatorBuilder: (_, index) {
          return SizedBox(
            width: 30,
          );
        },
      ),
    );
  }

  Widget _upcomingWeather() {
    return Container(
      child: ListView.separated(
        physics: BouncingScrollPhysics(),
        shrinkWrap: true,
        itemCount: 7,
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(
            height: 30,
          );
        },
        itemBuilder: (BuildContext context, int index) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(days[index]),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.orange[600]),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text("22℃"),
                  SizedBox(
                    width: 30,
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
