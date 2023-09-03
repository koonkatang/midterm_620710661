// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

// TODO: ใส่รหัสนักศึกษาที่ค่าสตริงนี้
const studentId = '620710661';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 20.0,
          ),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/bg_colorful.jpg"),
              opacity: 0.6,
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text('Good Morning',
                  textAlign: TextAlign.center, style: textTheme.headlineMedium),
              Text(studentId,
                  textAlign: TextAlign.center,
                  style: textTheme.headlineSmall!.copyWith(
                      fontWeight: FontWeight.bold, color: Colors.black87)),
              Spacer(),
              _buildQuizView(
                  'Question 1 of 1', 'What is the capital of France?'),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildButtonPanel(Colors.deepOrangeAccent,'back'),
                  _buildButtonPanel(Colors.greenAccent,'go'),
                  SizedBox(height: 16.0),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  _buildQuizView(String text1, String text2) {
    // TODO: build UI
    return Center(
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(50.0),
            border: Border.all(width: 2, color: Colors.black)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                text1,
                style: TextStyle(color: Colors.black, fontSize: 30.0),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(15.0, 0, 15.0, 20.0),
                child: Container(
                  padding: EdgeInsets.all(16.0),
                  margin: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                      color: Colors.teal,
                      borderRadius: BorderRadius.circular(50.0),
                      border: Border.all(color: Colors.black, width: 2)),
                  child: Column(
                    children: [
                      Text(
                        text2,
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 30.0),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                child: Column(
                  children: [
                    _choicebuild('A','Berlin'),
                    _choicebuild('B','London'),
                    _choicebuild('C','Madrid'),
                    _choicebuild('D','Paris'),
                    SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container _choicebuild(
    String choice,
      String description,
  ) {
    return Container(
      padding: EdgeInsets.all(5.0),
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(color: Colors.black, width: 2)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:  BorderRadius.circular(10.0),
                border: Border.all(color: Colors.black,width: 2),
              ),child: Center(
              child: Text(choice,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
            ),
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Text(description,style: TextStyle(fontSize: 30)),
              ],
            ),
          ],

        ),
      ),
    );
  }

  _buildButtonPanel(Color color,String skip) {
    // TODO: build UI
    return Expanded(
      child: Center(
        child: Container(
          padding: EdgeInsets.all(16.0),
          margin: EdgeInsets.all(10.0),
          width: 130,
          height: 40,
          decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(30.0),
              border: Border.all(color: Colors.black, width: 2),
          ),child: Center(child: Text(skip,style: TextStyle(fontSize: 20,color: Colors.black) )),
        ),
      ),
    );
  }
}
